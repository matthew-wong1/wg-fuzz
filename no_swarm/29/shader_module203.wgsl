struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 14914i), -100f, vec3<f32>(576f, 1000f, 1711f), -147f, vec4<u32>(18487u, 39444u, 4294967295u, 0u));

var<private> global2: vec2<bool>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec3<i32> {
    global2 = select(!select(arg_1.xy, vec2<bool>(arg_1.x, arg_1.x), !(!global3.wy)), select(global3.yy, vec2<bool>(global3.x, _wgslsmith_f_op_f32(trunc(global4.d)) < _wgslsmith_f_op_f32(-988f - global4.c.x)), 67301u != ~_wgslsmith_mod_u32(global1.e.x, 29092u)), select(!(!select(global3.xx, vec2<bool>(arg_1.x, arg_1.x), global2.x)), select(vec2<bool>(false, all(vec2<bool>(false, false))), global3.xw, select(!vec2<bool>(true, global2.x), !vec2<bool>(false, global2.x), !global3.xw)), true));
    var var_0 = 0u;
    var var_1 = Struct_1(vec3<i32>(i32(-1i) * -global1.a.x, 56947i, 2147483647i), 584f, global1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.c.x + _wgslsmith_f_op_f32(trunc(global4.c.x))), _wgslsmith_f_op_f32(970f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.x - 357f)))))), vec4<u32>(~10072u, ~abs(global1.e.x), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, global4.e.x, global1.e.x), vec4<u32>(0u, global4.e.x, global4.e.x, arg_0.x))), arg_0.x));
    global2 = vec2<bool>(true, false);
    var_1 = Struct_1(_wgslsmith_sub_vec3_i32(min(select(min(global4.a, vec3<i32>(-2147483647i, var_1.a.x, 28872i)), global1.a, select(vec3<bool>(false, global3.x, false), arg_1.wxw, arg_1.wzz)), vec3<i32>(var_1.a.x, ~1i, u_input.a)), vec3<i32>(-1i, global1.a.x, global1.a.x)), -383f, _wgslsmith_f_op_vec3_f32(global4.c - _wgslsmith_f_op_vec3_f32(-global4.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-504f)), _wgslsmith_f_op_f32(sign(global4.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-global4.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1423f)) - _wgslsmith_f_op_f32(trunc(429f))))), min(vec4<u32>(18178u, ~(~global4.e.x), global1.e.x | 0u, 4294967295u), vec4<u32>(~_wgslsmith_div_u32(global1.e.x, var_1.e.x), 4294967295u, _wgslsmith_mult_u32(37047u, arg_0.x), _wgslsmith_clamp_u32(~global4.e.x, abs(arg_0.x), countOneBits(0u)))));
    return abs(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(21384i, -46485i, global4.a.x), vec3<i32>(1i, global4.a.x, global1.a.x)), var_1.a), vec3<i32>(u_input.a, u_input.a, 1i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(max(~func_3(~global1.e, select(vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(global2.x, global3.x, global2.x, global2.x), false)), -global1.a), _wgslsmith_f_op_f32(global4.b - 821f), _wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_add_vec4_u32(firstLeadingBit(global4.e), firstLeadingBit(~firstLeadingBit(vec4<u32>(global1.e.x, global4.e.x, 4294967295u, global1.e.x)))));
    var var_1 = var_0;
    return Struct_1(abs(_wgslsmith_clamp_vec3_i32(~reverseBits(vec3<i32>(-1i, 46960i, 1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a, vec3<i32>(-36681i, -2147483647i, u_input.a)), var_1.a), var_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f * arg_1) - _wgslsmith_f_op_f32(round(-251f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, _wgslsmith_f_op_f32(trunc(var_1.b)), -294f))), -227f, ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.e.x, 0u, 15724u, global1.e.x), vec4<u32>(32712u, var_1.e.x, global4.e.x, 1u)) << (global4.e % vec4<u32>(32u)), ~abs(vec4<u32>(1u, var_0.e.x, var_1.e.x, 66090u)), any(!global3.zwz)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = Struct_1(arg_2.a, func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1134f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) + 960f))).b, _wgslsmith_f_op_vec3_f32(arg_2.c - global4.c), 388f, arg_2.e);
    var var_1 = vec4<f32>(793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f + _wgslsmith_f_op_f32(-global1.b))) + global4.d), _wgslsmith_f_op_f32(abs(arg_2.d)), arg_2.c.x);
    global1 = arg_2;
    let var_2 = func_2(!vec2<bool>(global3.x, true), 1093f);
    let var_3 = func_2(!select(select(!vec2<bool>(arg_3.x, false), arg_3.yz, true), arg_3.zy, select(!arg_3.xz, global3.wz, false)), var_0.b);
    return false;
}

fn func_1(arg_0: f32) -> i32 {
    global3 = !vec4<bool>(true, any(vec3<bool>(any(global3.xw), global3.x | true, true)), all(select(!global3.yz, vec2<bool>(global3.x, true), !global3.x)), func_4(-(~vec2<i32>(u_input.a, global4.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, global4.c.x, global1.c.x, -1174f)))), func_2(select(vec2<bool>(false, global3.x), global3.wz, global3.x), -1000f), global3.wwx));
    global0 = global4.a.x;
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-190f, _wgslsmith_f_op_f32(select(-753f, -791f, true)), global2.x)) * -1000f))));
    var var_1 = global1.e.x;
    var var_2 = global3.zz;
    return -(~(-(~(-1i)) & abs(global4.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, -1667f, vec3<f32>(_wgslsmith_f_op_f32(global4.c.x * global4.c.x), 770f, _wgslsmith_div_f32(global1.c.x, global4.b)), 155f, select(firstLeadingBit(~global1.e), vec4<u32>(global4.e.x, 4294967295u, ~32973u, max(firstLeadingBit(7831u), ~global4.e.x)), select(select(!vec4<bool>(true, global2.x, global2.x, global3.x), !vec4<bool>(global3.x, true, global3.x, global2.x), global4.e.x > global4.e.x), vec4<bool>(global2.x && global2.x, true, global2.x, global3.x), !all(vec2<bool>(global3.x, global3.x)))));
    var var_1 = Struct_1(vec3<i32>(func_1(1000f), -2147483647i, func_2(global3.zw, _wgslsmith_div_f32(449f, global1.c.x)).a.x), _wgslsmith_f_op_f32(min(374f, global1.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.d, global4.b, global4.c.x))), _wgslsmith_f_op_vec3_f32(trunc(global1.c))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, global4.d, -284f)))) * var_0.c), global4.b, func_2(vec2<bool>(true, global4.b == _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) - _wgslsmith_f_op_f32(step(-303f, global1.d)))))).e);
    global2 = select(select(!select(global3.zw, select(global3.xz, global3.zz, global2.x), true), global3.xx, global3.x), select(select(global3.yz, global3.yz, 6690u >= var_0.e.x), global3.zw, true), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(151f, var_1.c.x, false)), _wgslsmith_div_f32(global1.b, var_0.b)))) == func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f - -613f) + -1021f)).b);
    var var_2 = vec2<bool>(!global3.x, any(global3.zxz));
    let var_3 = _wgslsmith_div_vec2_f32(func_2(!vec2<bool>(any(vec2<bool>(true, true)), global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1103f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -897f) * -592f))).c.xz, vec2<f32>(463f, _wgslsmith_f_op_f32(var_0.b * func_2(vec2<bool>(false, var_2.x), _wgslsmith_f_op_f32(step(var_1.d, 1775f))).c.x)));
    global0 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1809f)), global1.d, var_3.x, _wgslsmith_f_op_f32(-global1.c.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, -853f, 451f, var_0.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-887f, global4.b, global1.b, var_0.c.x))), global2.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 373f, global4.d, -1000f))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(429f, -416f, global4.c.x, var_0.d), vec4<f32>(var_3.x, 334f, global4.d, -411f))), _wgslsmith_div_vec4_f32(vec4<f32>(-214f, global4.c.x, global4.b, global1.c.x), vec4<f32>(879f, 452f, 1438f, 217f))))))));
}

