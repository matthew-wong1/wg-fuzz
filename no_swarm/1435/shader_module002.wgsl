struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_2 = Struct_2(false);

var<private> global1: array<bool, 6>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(2147483647i, false, vec4<bool>(true, true, false, false)), Struct_1(13897i, true, vec4<bool>(true, false, true, true)), Struct_1(i32(-2147483648), false, vec4<bool>(false, true, true, false)));

var<private> global3: bool = true;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> i32 {
    global0 = Struct_2(all(select(!select(vec3<bool>(global0.a, true, false), vec3<bool>(false, arg_0.x, false), true), select(select(vec3<bool>(true, global0.a, true), vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 6u)], false, true), false), select(vec3<bool>(global1[_wgslsmith_index_u32(7484u, 6u)], arg_0.x, true), vec3<bool>(false, false, global0.a), vec3<bool>(arg_0.x, true, global0.a)), false), select(!vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 6u)], false, global0.a), !vec3<bool>(global1[_wgslsmith_index_u32(8342u, 6u)], global1[_wgslsmith_index_u32(global4.x, 6u)], global0.a), vec3<bool>(true, true, true)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1197f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1128f, -889f))) * -1528f));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(210f, 2035f)))), -1787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1740f - 663f)), 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2009f, -391f, 666f, -1342f), vec4<f32>(2457f, -1000f, -284f, -1396f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -313f, 626f, 737f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1107f, -2064f, 103f, 604f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(488f, 510f, -197f, -551f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, 468f, -1372f, -821f)), _wgslsmith_div_vec4_f32(vec4<f32>(415f, 1000f, -828f, 706f), vec4<f32>(528f, 1992f, -1255f, -487f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, _wgslsmith_f_op_f32(round(300f)), _wgslsmith_f_op_f32(min(-814f, -1024f)), -135f))), vec4<bool>(true, (arg_0.x | false) || (arg_0.x & !arg_0.x), true, false)));
    let var_1 = abs(_wgslsmith_add_i32(arg_1.x, -20778i));
    let var_2 = global2[_wgslsmith_index_u32(global4.x, 3u)];
    return 52467i;
}

fn func_2() -> Struct_2 {
    global1 = array<bool, 6>();
    var var_0 = Struct_3(-(vec2<i32>(abs(15410i), func_3(vec2<bool>(true, global0.a), vec3<i32>(1i, 434i, 7033i))) | -abs(vec2<i32>(2147483647i, u_input.a))), Struct_2(true), Struct_1(u_input.a ^ (reverseBits(u_input.a) << (_wgslsmith_mult_u32(0u, 2957u) % 32u)), select(true, true, any(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global0.a))), !select(!vec4<bool>(global0.a, global0.a, false, false), !vec4<bool>(global0.a, global0.a, false, global0.a), true)), abs(-countOneBits(vec3<i32>(28817i, 1i, u_input.a))));
    var var_1 = !vec3<bool>(!var_0.b.a && false, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1968f - -379f), _wgslsmith_f_op_f32(584f - -1446f))) > -633f);
    var var_2 = !var_1.zy;
    let var_3 = firstLeadingBit(global4.yzx);
    return Struct_2(false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> u32 {
    return _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~global4.x), global4.x, global4.x), global4.wzy);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(12400i, !(!(true && !global0.a)), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global0.a, !(u_input.a <= 27786i), true), !(!(!vec4<bool>(global0.a, true, global0.a, global1[_wgslsmith_index_u32(global4.x, 6u)]))), false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1f), -1630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global4 = _wgslsmith_add_vec4_u32(~reverseBits(countOneBits(vec4<u32>(1u, 4294967295u, 7898u, global4.x)) | countOneBits(vec4<u32>(global4.x, 0u, 73387u, global4.x))), vec4<u32>(~(~0u), _wgslsmith_mult_u32(~global4.x, global4.x), _wgslsmith_dot_vec3_u32(min(global4.ywx, global4.yyx), firstLeadingBit(global4.zyw)), ~(~global4.x)) | vec4<u32>(reverseBits(~global4.x), firstLeadingBit(global4.x << (23388u % 32u)), func_4(func_2(), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 3u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-var_1)), ~_wgslsmith_mod_u32(1u, global4.x)));
    global0 = Struct_2(global0.a);
    let var_2 = select(var_0.c.zy, !(!select(select(vec2<bool>(global0.a, var_0.c.x), var_0.c.zz, vec2<bool>(false, var_0.b)), var_0.c.wx, all(vec3<bool>(global0.a, var_0.c.x, var_0.b)))), !any(var_0.c.xyy));
    return Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -3986i), firstLeadingBit(vec2<i32>(var_0.a, u_input.a))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(40859i, var_0.a), vec2<i32>(u_input.a, -1i)))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, var_0.a), vec2<i32>(-37185i, var_0.a) ^ vec2<i32>(1260i, -31831i))), Struct_2(true), Struct_1(-max(firstTrailingBit(var_0.a), ~3464i), global0.a && all(vec3<bool>(true, global1[_wgslsmith_index_u32(99049u, 6u)], true)), !select(select(var_0.c, var_0.c, vec4<bool>(false, var_0.c.x, true, true)), vec4<bool>(false, false, false, var_0.b), select(var_0.c, var_0.c, var_0.b))), select(vec3<i32>(u_input.a, 48181i, var_0.a) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, 2147483647i, -44084i) << (global4.ywz % vec3<u32>(32u)), vec3<i32>(0i, -2147483647i, var_0.a)), select(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, u_input.a, var_0.a), ~vec3<i32>(30010i, 1i, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), firstLeadingBit(vec3<i32>(var_0.a, u_input.a, 1i))), all(var_2)), !select(var_0.c.yyw, vec3<bool>(false, false, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(all(vec3<bool>(1u >= (31248u << (global4.x % 32u)), true, false)));
    global3 = true;
    let var_1 = func_1();
    global3 = false;
    let var_2 = vec3<i32>(select(2147483647i, var_1.d.x, _wgslsmith_div_i32(var_1.d.x, -2147483647i) == _wgslsmith_add_i32(-17165i, var_1.a.x)) | u_input.a, select(~var_1.a.x, func_3(!func_1().c.c.wy, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-25667i, u_input.a, -31998i)), min(vec3<i32>(var_1.a.x, 22490i, var_1.c.a), vec3<i32>(var_1.a.x, 0i, 0i)))), global1[_wgslsmith_index_u32(global4.x, 6u)] | func_1().b.a), ~firstLeadingBit(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(~select(global4.wy, global4.ww, global1[_wgslsmith_index_u32(1u, 6u)]), global4.yw));
}

