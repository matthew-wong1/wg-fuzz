struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(28020u, 7589u), vec2<u32>(42261u, 40772u), vec2<u32>(4294967295u, 2730u), vec2<u32>(26103u, 4294967295u), vec2<u32>(22089u, 26297u), vec2<u32>(89863u, 1u), vec2<u32>(4294967295u, 49940u), vec2<u32>(98123u, 0u), vec2<u32>(1u, 27535u), vec2<u32>(4294967295u, 3457u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1719u), vec2<u32>(1u, 1u), vec2<u32>(27894u, 40778u), vec2<u32>(56692u, 29764u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 19027u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 5136u), vec2<u32>(0u, 1u), vec2<u32>(34392u, 67826u), vec2<u32>(30419u, 13274u), vec2<u32>(61467u, 0u), vec2<u32>(89934u, 1u), vec2<u32>(1u, 44252u), vec2<u32>(22068u, 20879u), vec2<u32>(16301u, 22044u), vec2<u32>(102078u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec3<i32> = vec3<i32>(33052i, -23642i, 1i);

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_3(~(~(~firstTrailingBit(-2147483647i))), global4.x, Struct_1(select(~select(vec4<i32>(global3.x, 2147483647i, 0i, 1i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 11314i), false), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, 2147483647i, -1i, 0i)), vec4<i32>(u_input.c.x, global3.x, 18624i, global3.x) ^ vec4<i32>(global3.x, 900i, 17141i, -1i)), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, global2.x, global2.x, false), global2.x), false)), 684f, global2.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.x, global4.x))) * vec2<f32>(814f, global4.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 657f), _wgslsmith_div_vec2_f32(vec2<f32>(-1779f, global4.x), vec2<f32>(-118f, -1000f)))), global2.x))), 2147483647i, ~(-max(_wgslsmith_mult_i32(u_input.a, u_input.a), global3.x | u_input.c.x)));
    var var_1 = select(~min(-vec2<i32>(1i, -49858i), vec2<i32>(5294i, global3.x) ^ var_0.c.a.wx) | abs(-abs(vec2<i32>(-1i, 18418i))), vec2<i32>(37222i, _wgslsmith_mod_i32(var_0.c.a.x, ~_wgslsmith_mult_i32(-22286i, -71730i))), vec2<bool>(false, var_0.c.c));
    global4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-542f, _wgslsmith_f_op_f32(f32(-1f) * -396f))));
    var var_2 = Struct_1((-vec4<i32>(-10992i, 1i, var_1.x, var_0.d) << (vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, 1u), u_input.b.x, u_input.b.x, 11370u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u ^ u_input.b.x, 2660u), 27u)], 1u, 25367u) % vec4<u32>(32u)), var_0.b, true, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1876f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(525f * global4.x), var_0.b)))));
    return _wgslsmith_clamp_vec3_i32(~var_2.a.zyz, min(var_0.c.a.xyw, u_input.c), var_2.a.xyx);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> i32 {
    global3 = func_3();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-global4.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(794f + global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 141f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, global4.x)) - _wgslsmith_f_op_f32(-var_0.a))))), var_0.a);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1124f, 1788f, global4.x)) + vec3<f32>(225f, 166f, var_0.a))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(701f, 1000f, global4.x) + vec3<f32>(global4.x, global4.x, -990f)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, var_0.a, global4.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-1236f, var_1.x, var_0.a), vec3<f32>(-417f, var_1.x, -1013f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 847f, 1691f)))) * vec3<f32>(1316f, _wgslsmith_f_op_f32(abs(var_0.a)), -861f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -1000f, global4.x)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-927f, _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(step(-148f, -547f))), 1f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, 1418f, 856f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 303f) * vec3<f32>(-664f, var_0.a, 381f))))), vec3<bool>(!arg_1, arg_1, true))), all(select(select(!vec2<bool>(arg_1, true), vec2<bool>(false, true), all(vec4<bool>(false, arg_1, arg_1, true))), select(vec2<bool>(global2.x, true), vec2<bool>(true, true), vec2<bool>(arg_1, false)), all(vec2<bool>(false, false))))));
    return ~(arg_0.x | countOneBits(abs(-arg_2)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_2 {
    global3 = _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(~abs(1i), reverseBits(countOneBits(-6282i)), 65912i)), vec3<i32>(countOneBits(_wgslsmith_add_i32(func_2(vec3<i32>(15908i, 1i, -1i), arg_1.a.c, arg_0), -2147483647i)), firstLeadingBit(max(2147483647i, arg_0)), arg_0), _wgslsmith_add_vec3_i32(arg_1.a.a.zzz, max(arg_1.a.a.xxx << (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), arg_1.a.a.xxz)));
    let var_0 = false;
    var var_1 = arg_1;
    var var_2 = !vec3<bool>(all(select(arg_3.xwy, arg_3.wzw, false)) | true, var_0, (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a.x, arg_1.a.a.x, global3.x, -1i), vec4<i32>(arg_0, global3.x, -1161i, arg_1.a.a.x)) >> (~arg_2.x % 32u)) <= _wgslsmith_clamp_i32(~arg_0, -6750i, -var_1.a.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - var_1.a.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(560f, global4.x) * var_1.a.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-382f, 1102f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, arg_1.a.b, var_1.a.b), vec3<f32>(global4.x, -1140f, var_1.a.d.x), !arg_3.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2047f, 1462f, global4.x) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1469f, -1000f, 407f), vec3<f32>(arg_1.a.b, var_1.a.d.x, var_1.a.b))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.b * global4.x), global4.x, _wgslsmith_div_f32(1177f, -379f)))))));
    return Struct_2(arg_1.a, countOneBits(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.x, 1295u), _wgslsmith_add_u32(u_input.b.x, var_1.b))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-813f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-252f + arg_2.a.d.x), _wgslsmith_f_op_f32(max(global4.x, arg_0.e.a.b)), !arg_0.a.a.c)), 143f)));
    let var_1 = func_1(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c.yy), vec2<i32>(arg_2.a.a.x << (firstTrailingBit(arg_3.x) % 32u), 16785i)), arg_0.a, vec4<u32>(arg_3.x, arg_3.x, ~(_wgslsmith_add_u32(7910u, 55711u) & _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(arg_0.b.b, 30u)], global1[_wgslsmith_index_u32(arg_2.b, 30u)])), 23191u), !vec4<bool>(arg_0.c, (arg_3.x << (34493u % 32u)) > _wgslsmith_mult_u32(1u, 4294967295u), global2.x, any(!vec4<bool>(arg_0.e.a.c, false, true, arg_2.a.c))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-var_0.a);
    let var_4 = _wgslsmith_f_op_f32(var_1.a.b + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)))), -1058f, any(!select(vec2<bool>(var_1.a.c, arg_0.c), vec2<bool>(global2.x, arg_2.a.c), false)))));
    return vec4<bool>(true, any(!(!select(vec4<bool>(arg_0.e.a.c, global2.x, true, var_1.a.c), vec4<bool>(false, arg_0.e.a.c, arg_2.a.c, false), arg_2.a.c))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(func_4(Struct_4(func_1(global3.x, Struct_2(Struct_1(vec4<i32>(2147483647i, global3.x, global3.x, 24938i), global4.x, global2.x, vec2<f32>(global4.x, global4.x)), 26906u), u_input.b, vec4<bool>(false, true, true, false)), func_1(u_input.a, Struct_2(Struct_1(vec4<i32>(global3.x, -2147483647i, global3.x, global3.x), global4.x, global2.x, vec2<f32>(global4.x, -389f)), 4294967295u), u_input.b, vec4<bool>(global2.x, false, global2.x, global2.x)), any(vec3<bool>(false, false, true)), vec4<i32>(1i, global3.x, 0i, global3.x), func_1(global3.x, Struct_2(Struct_1(vec4<i32>(global3.x, -1i, u_input.a, global3.x), -1080f, global2.x, vec2<f32>(global4.x, global4.x)), 4294967295u), u_input.b, vec4<bool>(false, false, false, false))), firstLeadingBit(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 27u)])) << (_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)]) % vec2<u32>(32u)), func_1(global3.x, func_1(47710i, Struct_2(Struct_1(vec4<i32>(global3.x, -33838i, 44386i, 4187i), -771f, global2.x, vec2<f32>(772f, 929f)), u_input.b.x), vec4<u32>(15295u, 8903u, global0[_wgslsmith_index_u32(0u, 27u)], 47553u), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 4058u, 6215u), !vec4<bool>(global2.x, global2.x, false, true)), u_input.b.zw)), _wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(672f * global4.x))))) != global4.x, true, !any(!(!vec3<bool>(false, global2.x, global2.x))));
    let var_1 = _wgslsmith_f_op_f32(step(1f, global4.x));
    global2 = select(var_0.yx, func_4(Struct_4(Struct_2(func_1(u_input.c.x, Struct_2(Struct_1(vec4<i32>(u_input.c.x, global3.x, u_input.a, 0i), var_1, global2.x, vec2<f32>(1344f, 196f)), 4294967295u), vec4<u32>(33467u, 33692u, 4294967295u, 4294967295u), vec4<bool>(true, true, var_0.x, false)).a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 27u)], 27u)]), func_1(_wgslsmith_mod_i32(global3.x, -15567i), Struct_2(Struct_1(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, global3.x), var_1, false, vec2<f32>(-1854f, -604f)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)]), u_input.b, var_0), !var_0.x, ~select(vec4<i32>(0i, u_input.c.x, 2147483647i, 28302i), vec4<i32>(global3.x, -1i, u_input.a, global3.x), var_0), func_1(global3.x << (65148u % 32u), func_1(-2147483647i, Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, global3.x, -60857i), var_1, var_0.x, vec2<f32>(2058f, var_1)), 4294967295u), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(83026u, 27u)], 2805u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27647u, 27u)], 27u)]), vec4<bool>(global2.x, true, global2.x, global2.x)), u_input.b | u_input.b, vec4<bool>(true, global2.x, global2.x, var_0.x))), abs(vec2<u32>(64424u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)]) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 41360u), vec2<u32>(10503u, 1u))), Struct_2(func_1(~u_input.a, func_1(-1i, Struct_2(Struct_1(vec4<i32>(3672i, global3.x, u_input.a, u_input.a), 1000f, var_0.x, vec2<f32>(global4.x, global4.x)), global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(57497u, 15345u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), var_0), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 49320u, 30579u)), var_0).a, _wgslsmith_add_u32(1u, 0u)), ~(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]))).xw, any(var_0.zw));
    global3 = select(vec3<i32>(global3.x, global3.x >> (_wgslsmith_mod_u32(4294967295u, 53750u) % 32u), 11619i) << (firstTrailingBit(vec3<u32>(func_1(u_input.c.x, Struct_2(Struct_1(vec4<i32>(global3.x, u_input.c.x, u_input.a, global3.x), -347f, var_0.x, vec2<f32>(579f, var_1)), 16224u), vec4<u32>(u_input.b.x, 0u, 5100u, global0[_wgslsmith_index_u32(4470u, 27u)]), var_0).b, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 80364u), ~28549u)) % vec3<u32>(32u)), abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -24489i, 1i) ^ u_input.c, firstLeadingBit(vec3<i32>(u_input.a, u_input.c.x, 0i))))), global2.x);
    let var_2 = !(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(19937u, 4294967295u)), abs(u_input.b.ww), _wgslsmith_sub_vec2_u32(u_input.b.wy, vec2<u32>(u_input.b.x, u_input.b.x))), firstTrailingBit(_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(56232u, 30u)], vec2<u32>(5733u, u_input.b.x)))) > ~(func_1(-2147483647i, Struct_2(Struct_1(vec4<i32>(-41725i, -4045i, u_input.c.x, 43563i), var_1, false, vec2<f32>(765f, global4.x)), u_input.b.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 65939u, 4294967295u), vec4<bool>(true, false, true, false)).b | _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], global0[_wgslsmith_index_u32(1u, 27u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 0u, 814f);
}

