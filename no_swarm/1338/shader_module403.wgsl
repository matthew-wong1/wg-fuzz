struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<u32> {
    global1 = array<Struct_1, 21>();
    global0 = !select(vec2<bool>(global2.b.x, 358f > _wgslsmith_div_f32(global2.c.x, 1138f)), !vec2<bool>(global2.a, true), global2.a);
    global0 = vec2<bool>(select(select(false, true, _wgslsmith_f_op_f32(select(3081f, global2.c.x, false)) < -1000f), !global0.x || all(global2.b.wxz), global2.b.x || true), global2.b.x);
    var var_0 = Struct_1(global2.b.x, global2.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * -303f) + _wgslsmith_f_op_f32(max(137f, -866f))) * -564f), global2.c.x, -879f, -1131f), countOneBits(8962u), abs(vec2<u32>(global2.e.x, ~abs(0u))));
    global3 = var_0.c.x;
    return vec3<u32>(18843u, _wgslsmith_add_u32(global2.d, global2.d), 1u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~(~arg_2.d), 21u)];
    var var_1 = vec4<u32>(var_0.d, var_0.e.x | (~reverseBits(1u) >> (~4294967295u % 32u)), _wgslsmith_dot_vec3_u32(select(~abs(vec3<u32>(arg_3.x, arg_3.x, 4294967295u)), firstTrailingBit(vec3<u32>(arg_2.d, 0u, 7430u)) >> (max(vec3<u32>(arg_3.x, arg_0.e.x, 0u), vec3<u32>(1u, 0u, arg_0.d)) % vec3<u32>(32u)), arg_2.b.zzw), func_3()), _wgslsmith_add_u32(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, 4294967295u, arg_0.e.x), vec3<u32>(55745u, arg_2.e.x, 0u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, min(global2.e.x, arg_3.x)), 1u & arg_2.d)));
    let var_2 = select(select(select(arg_2.b.zx, vec2<bool>(true, any(vec3<bool>(arg_0.a, false, false))), false), select(select(global2.b.zy, var_0.b.zw, var_0.b.x), select(vec2<bool>(arg_2.a, false), select(vec2<bool>(false, arg_2.a), arg_2.b.xx, global2.b.wz), vec2<bool>(true, true)), all(vec3<bool>(arg_0.b.x, arg_2.b.x, global0.x)) || true), all(select(select(vec3<bool>(global0.x, var_0.a, global0.x), arg_0.b.yxy, global2.b.zzz), var_0.b.wzz, var_0.b.xww))), var_0.b.yz, false);
    var_1 = ~_wgslsmith_sub_vec4_u32(select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(65404u, 64853u, global2.e.x, 0u)), ~vec4<u32>(4294967295u, 0u, var_0.e.x, 215u)), vec4<u32>(38849u, var_0.d, ~1u, 19201u), true), select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e.x, 1u, global2.d, 4294967295u), vec4<u32>(68159u, arg_2.d, 13266u, 88580u)), global2.e.x, arg_0.e.x, ~var_1.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(38831u, arg_0.e.x, arg_3.x, 59477u), ~vec4<u32>(arg_3.x, 4294967295u, var_0.d, 11493u)), all(!arg_2.b.yyy)));
    let var_3 = vec2<u32>(~(~_wgslsmith_div_u32(1u, 34626u) | _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, arg_3.x), firstLeadingBit(21815u))), ~var_0.e.x);
    return global2.b.wyy;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_1(true, vec4<bool>(-2147483647i < (_wgslsmith_div_i32(1i, u_input.a) ^ u_input.b), false || arg_2, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.x - global2.c.x), _wgslsmith_f_op_f32(global2.c.x * -1268f))) >= _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(round(global2.c.x)))), global2.c, _wgslsmith_mult_u32(69677u, 1u & ~(~arg_0.e.x)), select(~arg_0.e, vec2<u32>(1u, ~(~arg_0.e.x)), all(func_2(Struct_1(global2.b.x, global2.b, arg_0.c, arg_0.e.x, arg_0.e), arg_0.c, Struct_1(false, global2.b, arg_0.c, 0u, global2.e), ~arg_0.e))));
    global3 = var_0.c.x;
    global0 = !vec2<bool>(func_2(global1[_wgslsmith_index_u32(arg_3, 21u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1456f, 2442f, global2.c.x, -1279f), vec4<f32>(arg_0.c.x, arg_0.c.x, -889f, global2.c.x)))), Struct_1(any(vec4<bool>(arg_0.b.x, var_0.a, arg_0.a, arg_0.a)), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(true, true, true, global2.b.x), global2.b.x), vec4<f32>(arg_0.c.x, arg_0.c.x, 1101f, var_0.c.x), arg_1.x, arg_1 << (vec2<u32>(4294967295u, arg_0.e.x) % vec2<u32>(32u))), abs(vec2<u32>(var_0.d, 4294967295u))).x, !(35134u != global2.d));
    var var_1 = global2.c.yz;
    var var_2 = true;
    return 194f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b.zx;
    let var_0 = Struct_1(global2.a, global2.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global2.c.x, -606f)), _wgslsmith_f_op_f32(global2.c.x * global2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -982f) - -836f), _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(16761u, 21u)], vec2<u32>(global2.d, 58702u), global2.a, global2.d)), _wgslsmith_f_op_f32(1357f * global2.c.x), _wgslsmith_f_op_f32(trunc(global2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -217f)))), _wgslsmith_mod_u32(~(~1u), global2.e.x), (vec2<u32>(global2.e.x, 0u) ^ vec2<u32>(global2.e.x, func_3().x)) | _wgslsmith_sub_vec2_u32(~global2.e, firstLeadingBit(vec2<u32>(47481u, 4294967295u))));
    global3 = global2.c.x;
    let var_1 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_mod_i32(~1i, _wgslsmith_mod_i32(0i, -u_input.b)) != _wgslsmith_div_i32(var_1, var_1 >> ((38638u | global2.e.x) % 32u)), !(!(!global2.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-452f, 189f), var_0.c.x, -1050f, -262f) - global2.c))), _wgslsmith_clamp_u32(14878u, ~func_3().x, abs(31317u)), vec2<u32>(~max(firstLeadingBit(64767u), var_0.d), _wgslsmith_sub_u32(23425u, var_0.d)));
    var var_3 = min(_wgslsmith_add_i32(-2147483647i, -_wgslsmith_mod_i32(u_input.a, var_1)), u_input.a);
    var var_4 = !vec2<bool>(var_2.a, false);
    var var_5 = ~(vec2<i32>(-1i) * -vec2<i32>(-16240i, -68600i));
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a & select(~1i, 0i, var_4.x)), vec3<u32>(~61859u, var_0.e.x, 1u), ~countOneBits(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(14251u, var_0.d), vec2<u32>(global2.e.x, 55511u), vec2<u32>(global2.d, 13683u)))), reverseBits(~firstTrailingBit(vec3<u32>(var_0.e.x, 0u, 0u))) ^ select(~(vec3<u32>(4294967295u, var_0.d, 56283u) << (vec3<u32>(12679u, var_2.d, 0u) % vec3<u32>(32u))), ~vec3<u32>(0u, global2.e.x, global2.d), false));
}

