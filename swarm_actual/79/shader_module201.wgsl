struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<i32, 22>;

var<private> global1: Struct_4 = Struct_4(false, vec4<i32>(-22099i, -1i, -64i, i32(-2147483648)));

var<private> global2: vec4<u32> = vec4<u32>(1u, 0u, 1u, 72440u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1130f))), -297f, 1f);
    let var_1 = !select(vec4<bool>(global1.a, _wgslsmith_f_op_f32(-var_0.x) <= var_0.x, global1.a, !any(vec3<bool>(global1.a, global1.a, global1.a))), vec4<bool>(true && select(false, false, global1.a), true, true, !global1.a), false);
    return ~max(vec4<u32>(global2.x, global2.x, reverseBits(4294967295u), global2.x << (global2.x % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 25679u, global2.x, 39238u) & vec4<u32>(776u, 0u, global2.x, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(101914u, global2.x, global2.x, global2.x), vec4<u32>(76025u, global2.x, global2.x, 0u)), ~vec4<u32>(global2.x, 1u, 4294967295u, 0u))) | (abs(abs(~vec4<u32>(4294967295u, global2.x, global2.x, 1u))) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(0u, global2.x, 29580u, 169u) & vec4<u32>(global2.x, global2.x, 19946u, 0u), vec4<u32>(global2.x, 14647u, 0u, global2.x) ^ vec4<u32>(7534u, global2.x, 47161u, global2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(74509u, 17136u, global2.x, global2.x), vec4<u32>(4294967295u, 4294967295u, 72620u, global2.x))) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32((global1.b >> (min(func_3(), ~vec4<u32>(global2.x, 7374u, global2.x, global2.x)) % vec4<u32>(32u))) << (max(vec4<u32>(~0u, 0u, abs(global2.x), ~global2.x), vec4<u32>(max(0u, global2.x), global2.x, global2.x, ~1u)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.b, global1.b.x, ~(-global0[_wgslsmith_index_u32(global2.x, 22u)]), min(-6812i | arg_1.a.x, -u_input.a))));
    var var_1 = arg_1;
    global0 = array<i32, 22>();
    var_0 = reverseBits(vec4<i32>(-2147483647i, var_0.x, -firstLeadingBit(_wgslsmith_dot_vec3_i32(var_0.yxy, vec3<i32>(1i, 23566i, u_input.b))), _wgslsmith_mult_i32((var_0.x << (global2.x % 32u)) >> (_wgslsmith_dot_vec2_u32(global2.yz, global2.xy) % 32u), max(global1.b.x, _wgslsmith_clamp_i32(0i, var_1.b, 1i)))));
    var var_2 = abs(firstTrailingBit(vec4<u32>(57782u, 1u, 20927u, global2.x)));
    return 61478u;
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    global2 = ~(reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(101744u, global2.x, 0u, 0u), vec4<u32>(0u, global2.x, 0u, global2.x)), vec4<u32>(global2.x, global2.x, 19496u, 1u) & vec4<u32>(20266u, global2.x, 57468u, global2.x))) | vec4<u32>(~0u, firstLeadingBit(func_2(vec2<bool>(false, global1.a), Struct_2(global1.b.zy, -13396i, Struct_1(global1.b.x)))), ~4294967295u, 6661u));
    global1 = Struct_4(!all(select(!vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), all(vec4<bool>(global1.a, global1.a, global1.a, global1.a)))), global1.b);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = 35167u;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(-253f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_0.a)))));
    return Struct_4(global1.a, select(select(global1.b, vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 22u)], -27587i, global0[_wgslsmith_index_u32(global2.x, 22u)], global0[_wgslsmith_index_u32(var_1, 22u)]), global1.a) >> (~(~vec4<u32>(5294u, var_1, 4294967295u, 1u)) % vec4<u32>(32u)), global1.b, all(vec3<bool>(false, any(vec4<bool>(false, global1.a, false, global1.a)), !global1.a))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = !vec3<bool>(!(!arg_1.a) && false, !all(arg_3.wy), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1016f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, arg_2))))).a);
    global1 = func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-655f, arg_2), vec2<f32>(arg_2, 1135f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -1112f), vec2<f32>(740f, arg_2), arg_3.xw)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(366f, -197f))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(-489f, 1229f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2 - 471f), arg_2) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(102f, -1129f))))), var_0.yz)));
    global0 = array<i32, 22>();
    var var_1 = -abs(arg_1.b.x | _wgslsmith_add_i32(3691i, global1.b.x));
    global0 = array<i32, 22>();
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~global2.x), 3332u, select(global2.x >> (1u % 32u), 1u, false), global2.x), vec4<u32>(global2.x & ~global2.x, reverseBits(abs(4294967295u)), func_3().x, global2.x), firstTrailingBit(~vec4<u32>(39413u, 7880u, global2.x, global2.x)) | min(~vec4<u32>(global2.x, 0u, global2.x, global2.x), ~vec4<u32>(0u, global2.x, global2.x, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(!all(!vec2<bool>(global1.a, true)), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, 879f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1431f)) - _wgslsmith_f_op_f32(f32(-1f) * -826f)), true);
    global1 = Struct_4(global1.a, ~vec4<i32>(1i, global0[_wgslsmith_index_u32(~global2.x, 22u)], _wgslsmith_sub_i32(1i, u_input.b >> (23397u % 32u)), countOneBits(-global1.b.x)));
    global2 = ((_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, 4294967295u, 38134u, 47768u), vec4<u32>(84791u, global2.x, global2.x, 20472u)) & func_4(Struct_4(true, vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 22u)], u_input.b, 25494i, -11528i)), func_1(vec2<f32>(-1874f, -724f)), _wgslsmith_f_op_f32(select(1163f, -583f, true)), vec4<bool>(false, false, var_0.x, var_0.x))) | ~(vec4<u32>(global2.x, global2.x, global2.x, 32017u) >> (max(vec4<u32>(40716u, global2.x, 1u, 4294967295u), vec4<u32>(global2.x, 24094u, global2.x, global2.x)) % vec4<u32>(32u)))) >> ((~(~vec4<u32>(1u, global2.x, 31247u, 10640u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 4294967295u, 55100u, global2.x), vec4<u32>(global2.x, 4294967295u, 19333u, 19153u))) << (vec4<u32>(~1u, ~(global2.x << (40799u % 32u)), ~(~global2.x), firstTrailingBit(global2.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global2 = _wgslsmith_mult_vec4_u32(func_3(), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), ~reverseBits(vec4<u32>(global2.x, 4294967295u, 21087u, global2.x))) & vec4<u32>(10096u, 21899u, 44716u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, global2.x) | vec4<u32>(global2.x, global2.x, global2.x, 67580u), ~vec4<u32>(global2.x, global2.x, 8232u, global2.x))));
    var var_1 = firstTrailingBit(reverseBits(func_2(select(!var_0.zy, vec2<bool>(false, true), vec2<bool>(var_0.x, true)), Struct_2(global1.b.yy, global1.b.x, Struct_1(2147483647i)))));
    var_1 = ~4294967295u;
    global2 = ~vec4<u32>(global2.x, global2.x, min(4294967295u, ~40766u), min(~4294967295u, global2.x) | ~_wgslsmith_dot_vec3_u32(global2.zxz, vec3<u32>(global2.x, global2.x, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

