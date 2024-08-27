struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: i32;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = true;
    global0 = array<i32, 19>();
    let var_1 = global2.zwx;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)));
    var var_3 = ~arg_0 >> (8603u % 32u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2))) * var_2) * _wgslsmith_f_op_f32(sign(-1422f)));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_3(true);
    global1 = 1217i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1535f) - -173f) + _wgslsmith_f_op_f32(select(765f, _wgslsmith_f_op_f32(trunc(344f)), !var_0.a))), 31526u, vec4<bool>(all(vec2<bool>(var_0.a, true)), true, var_0.a, true)), global0[_wgslsmith_index_u32(reverseBits(1u), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(120800u, _wgslsmith_f_op_f32(799f * -836f), false, Struct_3(var_0.a)))))));
    global2 = firstLeadingBit(vec4<u32>(~global2.x, 65624u, ~var_1.a.b, 70340u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1995f * var_1.a.a) + _wgslsmith_f_op_f32(f32(-1f) * -1883f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - var_1.a.a))), ~26734u, !select(vec4<bool>(false, true, var_1.a.c.x, var_1.a.c.x), !var_1.a.c, true | var_1.a.c.x)), ~(~(~(~1i))), _wgslsmith_f_op_f32(func_3(u_input.b, _wgslsmith_f_op_f32(436f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c)) + _wgslsmith_f_op_f32(-var_1.c))), true, Struct_3(true))));
    return !select(!var_1.a.c.xx, var_2.a.c.yw, vec2<bool>(!var_0.a | true, max(u_input.a, u_input.a) < var_1.b));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<bool>) -> i32 {
    global2 = ~(~(countOneBits(vec4<u32>(u_input.b, global2.x, 210u, global2.x) | vec4<u32>(u_input.b, u_input.b, global2.x, u_input.b)) & _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(0u, 2931u, 52278u, global2.x))));
    var var_0 = ~(~(firstLeadingBit(global2.wzw) & firstLeadingBit(~global2.yzx)));
    var var_1 = arg_1.yyx;
    var var_2 = Struct_5(arg_2, vec2<f32>(var_1.x, arg_1.x), max(abs(-1i), u_input.a), Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(-460f)), firstTrailingBit(global2.x << (var_0.x % 32u)), select(!vec4<bool>(false, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_2.x, arg_0, false, true), arg_0), !vec4<bool>(arg_2.x, true, true, arg_0))), !select(vec3<bool>(true, arg_0, false), vec3<bool>(true, true, true), vec3<bool>(false, arg_2.x, arg_0))));
    global1 = -(u_input.a ^ -17171i);
    return 0i;
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec2<i32>((select(firstLeadingBit(global0[_wgslsmith_index_u32(global2.x, 19u)]), countOneBits(global0[_wgslsmith_index_u32(global2.x, 19u)]), true) ^ reverseBits(-2147483647i)) | reverseBits(global0[_wgslsmith_index_u32(1u, 19u)]), ~func_4(any(vec3<bool>(true, true, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(913f - 509f), 1979f, -1057f, -164f), select(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0), func_2(), true)));
    var var_1 = vec4<i32>(-4554i, -global0[_wgslsmith_index_u32(~u_input.b, 19u)], _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x | 1i, _wgslsmith_mod_i32(-7144i, global0[_wgslsmith_index_u32(60789u, 19u)]), -2147483647i), reverseBits(max(~vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a, -39880i)))), -global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(22484u, firstTrailingBit(1u), ~global2.x), max(~u_input.b, 0u), func_2().x), 19u)]);
    var var_2 = Struct_5(vec2<bool>(!arg_0.x, any(arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 161f), _wgslsmith_f_op_f32(min(1246f, 2935f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -142f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1305f, 1000f)))))), u_input.a, Struct_4(Struct_1(_wgslsmith_f_op_f32(select(-646f, _wgslsmith_f_op_f32(f32(-1f) * -601f), arg_0.x)), u_input.b, vec4<bool>(arg_0.x, all(vec3<bool>(true, arg_0.x, true)), true, false)), vec3<bool>(arg_0.x, true, !all(vec2<bool>(arg_0.x, arg_0.x)))));
    global1 = var_2.c;
    var_1 = vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(var_0, var_0), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global2.x), 19u)], -1547i), _wgslsmith_add_i32(-1i, var_1.x));
    return max(~u_input.b, abs(_wgslsmith_mult_u32(3097u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(~(1u << (~(~4294967295u | func_1(vec2<bool>(false, false))) % 32u)), 19u)];
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~(~global2.xwz), vec3<u32>(127579u, 0u, 54337u)), ~_wgslsmith_div_vec3_u32(firstLeadingBit(global2.xxz), vec3<u32>(8020u, global2.x, 10599u)), global2.xxz) & _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, global2.x, 0u) ^ vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 3099u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 71260u, 1u), global2.wwy)), ~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 30221u), global2.zzw, global2.ywx), abs(vec3<u32>(global2.x, u_input.b, u_input.b))));
    var var_2 = -(~u_input.a);
    var_0 = global0[_wgslsmith_index_u32(19490u, 19u)];
    var_0 = 8756i;
    var_0 = ~global0[_wgslsmith_index_u32(27211u, 19u)] & u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(2679u, 19u)], 1i, select((vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 19u)], 1i, 33731i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global2.x), vec3<u32>(u_input.b, 0u, 0u)) % vec3<u32>(32u))) & firstLeadingBit(min(vec3<i32>(-43481i, global0[_wgslsmith_index_u32(global2.x, 19u)], 2147483647i), vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 19u)], u_input.a))), ~vec3<i32>(51126i, _wgslsmith_mod_i32(2147483647i, u_input.a), ~(-2147483647i)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), global2.xy);
}

