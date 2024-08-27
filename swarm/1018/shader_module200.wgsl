struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<vec4<bool>, 14>;

var<private> global3: i32 = -12687i;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = select(vec4<bool>(arg_2.b, all(select(vec3<bool>(arg_0.x, false, arg_2.b), !arg_0.yxw, select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, false, true), arg_2.b))), any(select(global2[_wgslsmith_index_u32(arg_2.a, 14u)], arg_0, false)), any(select(!vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(false, false, false, false), arg_0.x))), global2[_wgslsmith_index_u32(arg_2.a, 14u)], vec4<bool>(arg_0.x, false, arg_2.b && (_wgslsmith_clamp_u32(arg_2.a, arg_2.a, u_input.a) != ~0u), false));
    global1 = array<Struct_1, 1>();
    global4 = max(arg_2.a, ~abs(u_input.a));
    global4 = 74060u;
    global0 = array<vec2<bool>, 15>();
    return arg_2.a;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = array<Struct_1, 1>();
    let var_0 = abs(firstLeadingBit(-40700i));
    var var_1 = Struct_3(Struct_2(abs(~(~49956u)), arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1028f, -119f)))))) - _wgslsmith_f_op_f32(min(-632f, _wgslsmith_f_op_f32(-arg_0.d.x)))), !arg_0.a.x, Struct_2(abs(_wgslsmith_mod_u32(47537u, ~1u)), arg_0.a.x), Struct_2(~29931u, any(select(global2[_wgslsmith_index_u32(u_input.a, 14u)], vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), false)) & (_wgslsmith_clamp_u32(8937u, 4294967295u, u_input.a) <= ~u_input.a)));
    global1 = array<Struct_1, 1>();
    global2 = array<vec4<bool>, 14>();
    return abs(max(~1u, ~0u));
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(vec2<u32>(func_4(global1[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(110683u, 14u)], 0i, Struct_2(32741u, false)), 1u)]) >> (func_4(global1[_wgslsmith_index_u32(u_input.a, 1u)]) % 32u), 12911u));
    global2 = array<vec4<bool>, 14>();
    var var_1 = !(!(true & !any(vec3<bool>(true, false, true))));
    var_1 = 44705u <= countOneBits(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30766u), vec2<u32>(47882u, var_0.x))));
    var_1 = true;
    return Struct_1(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1053f, 1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1098f, 204f), vec2<f32>(-957f, -1453f))) + vec2<f32>(-1189f, 952f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -920f)) + vec2<f32>(-1535f, -756f)))), _wgslsmith_f_op_f32(502f * 1022f), vec2<f32>(_wgslsmith_f_op_f32(-967f + -500f), _wgslsmith_f_op_f32(f32(-1f) * -546f)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> vec3<i32> {
    var var_0 = func_2();
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_1.x, u_input.a, 0u) >> (vec3<u32>(u_input.a, arg_1.x, u_input.a) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, 52491u))) << (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(arg_1.x, arg_1.x, 1u), vec3<u32>(arg_1.x, 0u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(39214u, 20618u, 36002u), vec3<u32>(arg_1.x, u_input.a, 4294967295u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(arg_1.x, 0u, 4294967295u), vec3<u32>(u_input.a, 1u, 27468u)), select(vec3<u32>(u_input.a, 4824u, u_input.a), ~vec3<u32>(8607u, arg_1.x, 4294967295u), func_2().a), vec3<u32>(1u, countOneBits(u_input.a), u_input.a))), _wgslsmith_sub_u32(~(arg_1.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(126776u, 4294967295u, 97866u), vec3<u32>(43723u, 4294967295u, u_input.a)) % 32u)), 12200u));
    var var_2 = func_2();
    var var_3 = u_input.a;
    var_3 = 4294967295u;
    return vec3<i32>(reverseBits(_wgslsmith_clamp_i32(-arg_0, abs(-2147483647i), -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_sub_i32(arg_0, select(arg_0, 0i, var_2.a.x)), -arg_0 & arg_0, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, arg_0))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -47215i, 2147483647i, i32(-1i) * -8540i), vec4<i32>(countOneBits(arg_0), ~arg_0, -34557i, -15440i))), arg_0);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(arg_2, arg_1.x, ~(i32(-1i) * -1931i) != arg_0.x, Struct_2(u_input.a, func_2().a.x), arg_2);
    var var_1 = vec3<i32>(-45539i, arg_0.x, -14995i);
    let var_2 = -540f;
    return Struct_3(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -495f), select(true, var_0.d.b, false), Struct_2(~u_input.a, any(vec3<bool>(true, arg_2.b, var_0.d.b)) || true), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.e.a, 4294967295u) ^ vec3<u32>(43574u, var_0.a.a, 0u), vec3<u32>(1303u, var_0.d.a, 70809u)) >> (51324u % 32u), any(!func_2().a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(4294967295u, ~(~37204u));
    let var_1 = 7992i;
    var var_2 = func_5(_wgslsmith_mod_vec3_i32(func_1(14382i, countOneBits(vec2<u32>(var_0.x, 4294967295u))), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-1i, var_1, var_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, var_1, 3127i), vec3<i32>(2518i, var_1, var_1)), vec3<i32>(35520i, -64441i, -1i) << (vec3<u32>(65366u, 0u, var_0.x) % vec3<u32>(32u))) << (firstTrailingBit(select(vec3<u32>(0u, var_0.x, u_input.a), vec3<u32>(u_input.a, u_input.a, var_0.x), false)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(920f, 669f), vec2<f32>(108f, 247f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, -475f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(646f, 1087f)))))), Struct_2(max(0u, u_input.a | abs(9237u)), true));
    global2 = array<vec4<bool>, 14>();
    let var_3 = false;
    let var_4 = -36981i;
    var var_5 = ~_wgslsmith_mod_i32(firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-7500i, var_4), vec2<i32>(var_1, var_4))), countOneBits(max(var_4, var_4)) | 30049i);
    var var_6 = firstTrailingBit(1i) > _wgslsmith_sub_i32(-1i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)) * _wgslsmith_f_op_f32(-var_2.b))), vec4<i32>(min(~(-65081i), ~(i32(-1i) * -2147483647i)), var_4, min(abs(var_4) >> (~var_0.x % 32u), -_wgslsmith_mod_i32(-11701i, var_1)), ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(43681i, -5553i)), ~vec2<i32>(-1i, var_1))), firstTrailingBit(var_1), 86822u, -2348f);
}

