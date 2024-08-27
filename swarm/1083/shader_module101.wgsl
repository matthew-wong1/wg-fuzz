struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: vec4<bool>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    let var_0 = -2147483647i;
    global2 = select(!vec4<bool>(global2.x & !global2.x, true, true, false), select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(false, true, global2.x, true))), !(!select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, global2.x, true, true), vec4<bool>(false, global2.x, true, global2.x))), !vec4<bool>(global2.x, global2.x, any(global2.zxz), false)), global2.x);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), global3.x)), _wgslsmith_f_op_f32(-global3.x), global3.x);
    var var_1 = vec2<i32>(min(countOneBits(var_0), var_0 >> (u_input.a.x % 32u)) ^ firstLeadingBit(-1i), -43912i) & (firstTrailingBit(global1[_wgslsmith_index_u32(0u, 10u)]) | global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a.x, 0u), _wgslsmith_div_u32(firstTrailingBit(1u), max(0u, 24926u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~u_input.a.x)), 10u)]);
    global2 = !(!vec4<bool>(false, any(!vec4<bool>(true, false, global2.x, false)), false, !select(true, true, false)));
    return select(select(!global2.zz, vec2<bool>(global2.x, true), !vec2<bool>(global2.x, false)), vec2<bool>(!(!global2.x), any(vec4<bool>(select(global2.x, global2.x, global2.x), true, global2.x & global2.x, all(vec4<bool>(true, true, false, true))))), vec2<bool>(any(!vec4<bool>(false, global2.x, false, global2.x)), all(vec3<bool>(-1i > var_1.x, !global2.x, true))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-986f))) - 315f), global3.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global3.x))), _wgslsmith_f_op_f32(global3.x * 457f), 118f, _wgslsmith_f_op_f32(-global3.x)), vec4<bool>(arg_1, !arg_2.a, true, !any(select(global2.zyz, vec3<bool>(false, global2.x, arg_1), global2.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(199f, -239f, arg_2.a)), _wgslsmith_f_op_f32(ceil(arg_2.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x + -538f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -306f, -554f, -1029f)), vec4<f32>(-295f, 1171f, 448f, arg_2.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2558f, -890f, -275f, -1000f)), global2.x)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, 931f, arg_2.b, arg_2.b)))))));
    var var_1 = Struct_2(vec2<u32>(31000u, arg_0) & abs(~u_input.a.zz), arg_2, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.b, global3.x, arg_2.b, 1000f), var_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), vec4<f32>(_wgslsmith_f_op_f32(arg_2.b + global3.x), _wgslsmith_f_op_f32(ceil(arg_2.b)), arg_2.b, _wgslsmith_f_op_f32(-499f - arg_2.b))))));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, reverseBits(arg_0), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0, u_input.a.x), 1u)), ~(~countOneBits(vec4<u32>(var_1.a.x, 70608u, 4294967295u, arg_0))));
    var var_3 = global3.x;
    return vec4<bool>(any(global2.zzx) != any(!select(global2.wxy, vec3<bool>(true, arg_2.a, global2.x), global2.yxz)), global2.x, arg_1, (var_2.x >= countOneBits(16200u)) | all(select(!vec2<bool>(true, arg_2.a), global2.wy, global2.wz)));
}

fn func_2() -> vec4<bool> {
    global1 = array<vec2<i32>, 10>();
    let var_0 = func_4(~u_input.a.x, all(select(func_3(), !(!global2.xz), !vec2<bool>(global2.x, global2.x))), Struct_1(true, 218f));
    let var_1 = Struct_1(!(!var_0.x), _wgslsmith_f_op_f32(round(1f)));
    let var_2 = vec4<f32>(144f, -601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(466f)), 418f))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.b)))))));
    let var_3 = _wgslsmith_f_op_f32(-242f + _wgslsmith_div_f32(var_1.b, _wgslsmith_div_f32(var_1.b, var_2.x)));
    return !var_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    global2 = !(!select(select(vec4<bool>(true, arg_2, false, arg_2), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_2, true, global2.x, true), vec4<bool>(global2.x, global2.x, true, true)), !vec4<bool>(true, global2.x, global2.x, true)), !select(vec4<bool>(true, arg_2, global2.x, true), vec4<bool>(true, true, false, global2.x), vec4<bool>(global2.x, true, global2.x, arg_2)), true));
    global2 = select(select(select(vec4<bool>(arg_2, false, select(global2.x, true, true), false), !(!vec4<bool>(global2.x, global2.x, true, arg_2)), func_2()), !vec4<bool>(true, !arg_2, true, global2.x), select(all(global2.xw), true, all(select(vec4<bool>(global2.x, global2.x, arg_2, global2.x), vec4<bool>(true, true, true, arg_2), false)))), vec4<bool>(!(!arg_2 & (global2.x && global2.x)), true, true, false), (_wgslsmith_f_op_f32(-1193f + _wgslsmith_f_op_f32(arg_1.x - arg_0.x)) > _wgslsmith_f_op_f32(global3.x * 1000f)) || true);
    let var_0 = 0i;
    let var_1 = Struct_1(!(!global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)))));
    let var_2 = select(u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, ~(~4294967295u)), !(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0, var_0), 8521i) > var_0));
    return Struct_1(select(any(vec4<bool>(!arg_2, select(var_1.a, arg_2, var_1.a), 1000f > var_1.b, var_0 >= -3691i)), !(!arg_2), var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -531f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53989u, 91182u, 58139u), vec4<u32>(1u, arg_1.a.x, u_input.a.x, 1u)), firstTrailingBit(4294967295u), _wgslsmith_mult_u32(u_input.a.x, 0u)), ~max(vec4<u32>(u_input.a.x, arg_1.a.x, 35951u, u_input.a.x), vec4<u32>(u_input.a.x, 16822u, arg_1.a.x, arg_1.a.x))), min(_wgslsmith_mult_vec4_u32(countOneBits(abs(vec4<u32>(arg_1.a.x, 7716u, arg_1.a.x, 57175u))), select(vec4<u32>(1u, arg_1.a.x, 0u, arg_1.a.x), abs(vec4<u32>(91496u, arg_1.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, false))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(50677u, arg_1.a.x, 4294967295u, 50219u), vec4<u32>(0u, arg_1.a.x, arg_1.a.x, 4294967295u)), ~vec4<u32>(0u, arg_1.a.x, arg_1.a.x, 28715u)), countOneBits(reverseBits(vec4<u32>(12969u, 4294967295u, arg_1.a.x, arg_1.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 72619u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1.a.x) % vec4<u32>(32u)))))), 10u)];
    return Struct_2(arg_1.a, func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.wz * global3.xx) - _wgslsmith_f_op_vec2_f32(-arg_1.c.yw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.c.wy, vec2<f32>(287f, arg_0.b))) * vec2<f32>(1f, 1f)), !select(arg_0.a, arg_1.b.a, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(575f, arg_0.b, -1175f), arg_1.c.yyw))) - _wgslsmith_div_vec3_f32(arg_1.c.zxz, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-757f, arg_0.b, 545f))))), func_4(u_input.a.x >> ((1359u << (u_input.a.x % 32u)) % 32u), select(global2.x, arg_0.a, false) || true, Struct_1(true, arg_1.c.x)).x), arg_1.c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_0.a.x >> (1u % 32u);
    global0 = _wgslsmith_f_op_f32(arg_2.b.b * _wgslsmith_f_op_f32(ceil(func_1(_wgslsmith_f_op_vec2_f32(arg_2.c.yy * _wgslsmith_f_op_vec2_f32(-arg_0.c.xy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b.b, arg_3.b.b, arg_1.c.x)))), !arg_2.b.a).b)));
    let var_1 = 44567i;
    var var_2 = !vec3<bool>(false, !all(!global2.zx), true);
    var_2 = vec3<bool>(!func_5(Struct_1(arg_2.b.a | var_2.x, arg_2.b.b), arg_0).b.a, 3203u > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.x, firstTrailingBit(arg_3.a.x), ~arg_0.a.x), abs(vec3<u32>(4872u, 93560u, 3533u))), arg_0.b.a);
    return vec4<bool>(global2.x, any(vec4<bool>(true, var_2.x, arg_2.b.a, arg_3.b.a)), false, !(max(~122206u, ~4294967295u) > _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.x, 4294967295u, 4294967295u, 73212u), max(vec4<u32>(arg_3.a.x, 1u, 40258u, 4294967295u), vec4<u32>(var_0, u_input.a.x, 31239u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1387f;
    global2 = func_6(func_5(func_1(global3.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1177f, 297f)) + vec3<f32>(-1470f, -354f, 186f)), global2.x), Struct_2(~vec2<u32>(u_input.a.x, 1u), func_1(_wgslsmith_f_op_vec2_f32(global3.xz + global3.zy), vec3<f32>(global3.x, -459f, global3.x), func_3().x), vec4<f32>(global3.x, -2426f, 846f, global3.x))), func_5(func_5(func_1(_wgslsmith_f_op_vec2_f32(global3.zz + global3.xz), global3.zyx, true), Struct_2(vec2<u32>(0u, 0u), Struct_1(true, -226f), _wgslsmith_div_vec4_f32(vec4<f32>(-222f, global3.x, 1000f, 715f), vec4<f32>(global3.x, 1514f, -2259f, global3.x)))).b, Struct_2(abs(vec2<u32>(u_input.a.x, 1u)), func_5(func_1(vec2<f32>(global3.x, global3.x), vec3<f32>(-836f, global3.x, global3.x), global2.x), func_5(Struct_1(true, 1075f), Struct_2(u_input.a.xx, Struct_1(false, -149f), vec4<f32>(867f, global3.x, global3.x, global3.x)))).b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), global3.x, global3.x, 1023f))), Struct_2(vec2<u32>(0u & u_input.a.x, ~1u) >> (vec2<u32>(firstTrailingBit(32526u), ~u_input.a.x) % vec2<u32>(32u)), Struct_1(func_5(func_5(Struct_1(false, 663f), Struct_2(u_input.a.yz, Struct_1(false, global3.x), vec4<f32>(-1000f, global3.x, global3.x, 1001f))).b, func_5(Struct_1(false, -1551f), Struct_2(u_input.a.yz, Struct_1(false, -478f), vec4<f32>(632f, 493f, global3.x, -549f)))).b.a, global3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1325f, global3.x, -352f, global3.x)))))), Struct_2(countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)), func_5(Struct_1(!global2.x, global3.x), Struct_2(_wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, u_input.a.x)), Struct_1(false, 356f), vec4<f32>(-1042f, -289f, global3.x, global3.x))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(true, global3.x), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(global2.x, -1000f), vec4<f32>(global3.x, global3.x, -302f, global3.x))).c + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, 423f, global3.x, -285f)))) + vec4<f32>(_wgslsmith_f_op_f32(-global3.x), func_1(global3.zz, vec3<f32>(939f, -1554f, global3.x), global2.x).b, -446f, _wgslsmith_f_op_f32(-global3.x)))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + -542f), -915f))), _wgslsmith_f_op_f32(func_5(func_1(global3.wz, vec3<f32>(global3.x, global3.x, global3.x), false), Struct_2(vec2<u32>(4294967295u, u_input.a.x), Struct_1(global2.x, -1129f), vec4<f32>(global3.x, global3.x, global3.x, -1512f))).b.b * _wgslsmith_f_op_f32(global3.x * 142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x)))));
    let var_0 = u_input.a.xy;
    let var_1 = Struct_1(any(vec4<bool>(!(u_input.a.x != u_input.a.x), false, true, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(372f, global3.x)), -201f)) - global3.x) + global3.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x + global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2709f * 1343f) - _wgslsmith_f_op_f32(min(global3.x, -1424f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b * global3.x), _wgslsmith_f_op_f32(1318f - 1543f), false))))));
    let var_3 = func_5(func_1(_wgslsmith_f_op_vec2_f32(-var_2.yx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(157f - -745f), _wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(floor(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, 111f)) == -1024f), func_5(func_5(var_1, Struct_2(vec2<u32>(var_0.x, var_0.x), Struct_1(global2.x, -860f), _wgslsmith_div_vec4_f32(vec4<f32>(828f, var_2.x, -1468f, 1009f), vec4<f32>(-1073f, var_1.b, -455f, 305f)))).b, func_5(Struct_1(true, var_1.b), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), var_0), Struct_1(var_1.a, global3.x), vec4<f32>(global3.x, var_1.b, 1604f, var_1.b))))).b.a;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + 419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 1778f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(113f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1417f * -566f), _wgslsmith_f_op_f32(1132f + -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, global3.x, 1000f, -130f), vec4<f32>(var_2.x, -1564f, var_2.x, global3.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 482f, var_1.b, global3.x)))), vec4<f32>(_wgslsmith_f_op_f32(102f * _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x - global3.x))), _wgslsmith_div_f32(1681f, -1302f), _wgslsmith_f_op_f32(-275f - global3.x)))));
    var var_4 = Struct_2(var_0, func_5(func_5(var_1, func_5(Struct_1(false, -714f), func_5(var_1, Struct_2(vec2<u32>(0u, var_0.x), Struct_1(false, -757f), vec4<f32>(-437f, var_2.x, 811f, -1582f))))).b, func_5(Struct_1(any(vec4<bool>(var_1.a, true, global2.x, var_1.a)), _wgslsmith_f_op_f32(sign(-1608f))), Struct_2(vec2<u32>(1u, 1u), Struct_1(var_1.a, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -722f, var_1.b) - vec4<f32>(global3.x, 1000f, var_1.b, 679f))))).b, vec4<f32>(var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b * 1505f))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(956f, -642f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.zxz)), all(func_2())).b, _wgslsmith_f_op_f32(ceil(-3057f))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-2393i)));
}

