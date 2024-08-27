struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(1i, -51089i, -42061i, 2147483647i), 260f), Struct_1(vec4<i32>(1i, 34136i, -1i, 0i), -392f), Struct_1(vec4<i32>(i32(-2147483648), 8691i, i32(-2147483648), 1i), -2586f), Struct_1(vec4<i32>(9517i, 8448i, 34920i, -1i), 1429f), Struct_1(vec4<i32>(-47312i, -32744i, 72301i, i32(-2147483648)), 128f), Struct_1(vec4<i32>(-20463i, 48679i, 1i, 2147483647i), -104f), Struct_1(vec4<i32>(1i, -7663i, -42301i, 0i), 1366f), Struct_1(vec4<i32>(1i, -40541i, 54450i, i32(-2147483648)), -757f), Struct_1(vec4<i32>(i32(-2147483648), -18240i, 72892i, 2147483647i), -577f), Struct_1(vec4<i32>(16189i, 0i, 2147483647i, -12566i), 1000f), Struct_1(vec4<i32>(2147483647i, 58355i, 0i, 0i), 727f), Struct_1(vec4<i32>(-1i, i32(-2147483648), 14482i, -1i), -1316f), Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, -1i), -331f), Struct_1(vec4<i32>(2147483647i, -32905i, i32(-2147483648), 1548i), -1000f));

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<vec2<i32>, 14>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(i32(-2147483648), -31142i, 45215i, 1i), 750f), Struct_1(vec4<i32>(15415i, 18061i, 30821i, 42527i), 422f), Struct_1(vec4<i32>(i32(-2147483648), -31603i, -9349i, -35652i), -2670f), Struct_1(vec4<i32>(-20993i, 12997i, 0i, -2150i), 2383f), Struct_1(vec4<i32>(-9767i, 2147483647i, 41371i, -2033i), 694f), Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), -507f), Struct_1(vec4<i32>(-11682i, 37585i, 1i, -46095i), -1596f), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 12774i), -1066f), Struct_1(vec4<i32>(30915i, 25520i, 1i, i32(-2147483648)), 628f), Struct_1(vec4<i32>(0i, 1i, -1i, -7116i), -1115f), Struct_1(vec4<i32>(23403i, -58372i, -1i, 2147483647i), 509f), Struct_1(vec4<i32>(-1i, -16713i, 13813i, 1i), 304f), Struct_1(vec4<i32>(-30396i, -32539i, -1i, i32(-2147483648)), 733f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = 58750u;
    let var_1 = Struct_1(~(_wgslsmith_add_vec4_i32(arg_0.a, arg_0.a) ^ vec4<i32>(arg_0.a.x, -1i, -53664i, arg_0.a.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(abs(2147483647i), ~20993i, i32(-1i) * -1i, -arg_0.a.x), select(~vec4<i32>(19182i, u_input.a.x, 51616i, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.a.x, 52339i), select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1))), _wgslsmith_div_f32(_wgslsmith_div_f32(1166f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) - -151f)));
    global0 = array<Struct_1, 14>();
    global1 = array<Struct_1, 1>();
    var var_2 = vec3<bool>(arg_1, var_1.b < 904f, arg_1);
    return var_2.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(563f, 1404f), vec2<f32>(-423f, 1000f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1862f, 523f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(967f, -234f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, 1000f) - vec2<f32>(-1107f, -241f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1247f, 1152f)))))));
    var var_1 = select(!select(vec4<bool>(func_3(Struct_1(vec4<i32>(0i, u_input.a.x, u_input.a.x, 8221i), 1784f), false), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), vec4<bool>(true, func_3(Struct_1(vec4<i32>(10216i, 2147483647i, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1169f)), true), true, true), !vec4<bool>(_wgslsmith_f_op_f32(step(var_0.x, 517f)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), !any(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(-273f, 858f)) > _wgslsmith_f_op_f32(1179f - var_0.x)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 1u)];
    let var_3 = !vec4<bool>(func_3(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-12260i, 2147483647i, 1i, -2147483647i), vec4<i32>(0i, var_2.a.x, var_2.a.x, -23673i)), 1f), false), false, any(!select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), true)), var_1.x);
    let var_4 = -(abs(~(-41477i)) >> (firstTrailingBit(~39170u) % 32u));
    return Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x))))) + -922f));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.x | _wgslsmith_mod_i32(reverseBits(~countOneBits(-2147483647i)), countOneBits(~max(arg_0.a.x, -8463i)));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(min(arg_2.x, -1i), u_input.a.x, 1400i << (1u % 32u)), abs(_wgslsmith_div_vec3_i32(arg_3.a.xyw, vec3<i32>(23212i, u_input.a.x, -2147483647i))), ~u_input.b > _wgslsmith_sub_u32(87871u, u_input.b)) & vec3<i32>(_wgslsmith_mod_i32(arg_2.x, _wgslsmith_div_i32(arg_2.x, arg_2.x)), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(~24496u, 14u)], vec2<i32>(arg_0.a.x, arg_0.a.x)), -max(-45248i, u_input.a.x)), ~_wgslsmith_mult_vec3_i32(func_2().a.xzy, arg_3.a.ywx), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, ~u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, arg_2.x) & arg_0.a.wxw, ~vec3<i32>(arg_3.a.x, 2147483647i, 0i)))));
    var var_3 = !(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    global2 = array<vec2<i32>, 14>();
    return global1[_wgslsmith_index_u32(u_input.b, 1u)];
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    global2 = array<vec2<i32>, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(ceil(1f)))), arg_0.b, arg_0.b)));
    global1 = array<Struct_1, 1>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1604f)), arg_0.b)) - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2269f - -383f)), _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f * var_0.x) + func_2().b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, arg_0.b)))))), 433f);
    var_0 = _wgslsmith_div_vec3_f32(var_1.xxy, var_1.xyy);
    return !select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), false), vec2<bool>(true, true));
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 1>();
    var var_0 = !select(func_5(func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~vec2<i32>(-2147483647i, -26117i), global3[_wgslsmith_index_u32(~4294967295u, 13u)]), u_input.a.x), !vec2<bool>(u_input.b > 0u, false), vec2<bool>(func_5(Struct_1(vec4<i32>(u_input.a.x, -30509i, u_input.a.x, u_input.a.x), -3438f), _wgslsmith_sub_i32(u_input.a.x, 7060i)).x, true));
    let var_1 = abs(vec2<i32>(u_input.a.x, 16628i));
    var_0 = !(!select(!func_5(global3[_wgslsmith_index_u32(0u, 13u)], u_input.a.x), !vec2<bool>(var_0.x, false), func_5(global0[_wgslsmith_index_u32(countOneBits(10722u), 14u)], 1i).x));
    var var_2 = func_4(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_1.x), _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(~u_input.b, 1u)], -1561f, _wgslsmith_mult_vec2_i32(var_1, u_input.a), global1[_wgslsmith_index_u32(~u_input.b, 1u)]).b - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-146f + -296f), _wgslsmith_f_op_f32(abs(955f)))))), 778f, global2[_wgslsmith_index_u32(~(4294967295u << (_wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 0u)) % 32u)), 14u)], func_4(Struct_1(firstTrailingBit(vec4<i32>(var_1.x, -35228i, u_input.a.x, 1i)), 570f), _wgslsmith_f_op_f32(select(-151f, _wgslsmith_f_op_f32(abs(2215f)), var_0.x)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(15655u, u_input.b), vec2<u32>(0u, 1u)) ^ (u_input.b & u_input.b)), 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)])).a.x;
    return _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(-(~abs(u_input.a)), _wgslsmith_sub_vec2_i32(-(u_input.a << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), ~(-u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 1u)];
    global1 = array<Struct_1, 1>();
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) * 1024f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b * var_0.b), -1423f))))) * var_0.b);
    var var_3 = global3[_wgslsmith_index_u32(max(u_input.b, select(_wgslsmith_mult_u32(~79661u, ~u_input.b), abs(17423u), !(!any(vec2<bool>(true, false))))), 13u)];
    global2 = array<vec2<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, func_2().a.x);
}

