struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(-7297i, u_input.e.x, ~_wgslsmith_mult_vec2_u32(~(~u_input.e.zx), u_input.e.zy), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-47912i, u_input.c) ^ ~u_input.b.x, u_input.b.x), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c, 54756i), 1i, u_input.c)), firstTrailingBit(~1i), -15827i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.e.x, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(435f)))) * global1[_wgslsmith_index_u32(reverseBits(u_input.a), 19u)]));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> bool {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(~0u, 26518u) < select(4128u, arg_0.b, !arg_0.a.x));
    global1 = array<f32, 19>();
    let var_1 = !(!select(vec4<bool>(any(arg_0.a.zy), 469f >= global1[_wgslsmith_index_u32(arg_0.b, 19u)], all(arg_0.a.zxy), false), arg_0.a, global0.a));
    global1 = array<f32, 19>();
    let var_2 = var_0;
    return (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, u_input.e.x), 67694u, 0u), vec3<u32>(~22165u, firstLeadingBit(u_input.a), 42108u)) < u_input.e.x) & var_1.x;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = -(vec2<i32>(-_wgslsmith_clamp_i32(0i, u_input.d, -1i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, u_input.c), _wgslsmith_mult_i32(1i, u_input.d), 54167i)) & vec2<i32>(_wgslsmith_div_i32(-2147483647i, 1i >> (u_input.a % 32u)), ~(-1i)));
    global0 = Struct_1(true);
    let var_1 = Struct_1(true | any(vec3<bool>(u_input.e.x <= u_input.a, true || global0.a, any(vec4<bool>(true, true, false, true)))));
    global1 = array<f32, 19>();
    let var_2 = Struct_3(vec4<bool>(func_4(Struct_3(!vec4<bool>(false, var_1.a, var_1.a, false), 1u), _wgslsmith_f_op_f32(func_3()), vec2<i32>(0i, 44184i), reverseBits(reverseBits(10744i))), !all(vec4<bool>(false, true, var_1.a, var_1.a)), -(~1i) < countOneBits(var_0.x), true), _wgslsmith_sub_u32(1u, u_input.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -2131f);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(6918u, 19u)])), 1120f), global1[_wgslsmith_index_u32(max(13928u, arg_1.x), 19u)], _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 19u)]))))));
    let var_1 = Struct_1(global0.a);
    let var_2 = Struct_2(7705i, arg_0.c.x, _wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a, 1u)) | vec2<u32>(countOneBits(u_input.e.x), firstTrailingBit(u_input.a)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.e.xy, vec2<u32>(arg_0.c.x, 68405u), vec2<u32>(u_input.e.x, arg_0.c.x)) >> (~arg_0.c % vec2<u32>(32u)))), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(-9240i, -2147483647i, arg_2, u_input.d), u_input.b | u_input.b) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.b.x, arg_0.d.x), u_input.b)));
    let var_3 = vec3<i32>(arg_2, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~firstTrailingBit(0i), var_2.a, ~_wgslsmith_div_i32(arg_0.d.x, var_2.d.x)), _wgslsmith_dot_vec2_i32(select(-var_2.d.ww, vec2<i32>(2147483647i, u_input.b.x) & var_2.d.xx, vec2<bool>(global0.a, global0.a)), countOneBits(vec2<i32>(arg_0.d.x, 2147483647i))), arg_0.a), 13030i);
    global0 = Struct_1(global0.a);
    return Struct_3(!(!select(!vec4<bool>(var_1.a, global0.a, var_1.a, var_1.a), !vec4<bool>(false, global0.a, true, false), arg_2 > var_2.d.x)), ~32889u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-_wgslsmith_mult_i32(1i, u_input.d), -u_input.b.x, _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-21858i, -1913i, 18744i, 1i), vec4<i32>(u_input.c, -17964i, u_input.d, 2147483647i), -u_input.b), u_input.b, select(!vec4<bool>(false, global0.a, true, false), select(vec4<bool>(global0.a, global0.a, false, global0.a), vec4<bool>(true, false, global0.a, false), false), global0.a || false)), -abs(vec4<i32>(u_input.d, u_input.b.x, u_input.c, -2147483647i))));
    var var_1 = func_1(Struct_2(-2147483647i, 0u, select(~_wgslsmith_mod_vec2_u32(u_input.e.yy, u_input.e.zx), select(_wgslsmith_sub_vec2_u32(u_input.e.yx, u_input.e.xx), u_input.e.xy, vec2<bool>(true, true)), !(!vec2<bool>(global0.a, true))), vec4<i32>(-46722i, var_0.x, _wgslsmith_div_i32(u_input.c, -18703i), -52802i)), ~abs(vec3<u32>(0u, 1u, u_input.a)), u_input.d);
    var var_2 = global0.a;
    var_1 = func_1(Struct_2(38822i, 44099u, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(59960u, u_input.e.x)), vec2<u32>(35349u, var_1.b)) ^ vec2<u32>(var_1.b, 0u), (vec4<i32>(u_input.d, -1i, -29438i, 2147483647i) >> (vec4<u32>(4294967295u, 123086u, var_1.b, u_input.e.x) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mod_u32(13536u, var_1.b), 1u, _wgslsmith_mult_u32(31702u, var_1.b), 76964u) % vec4<u32>(32u))), (firstLeadingBit(vec3<u32>(var_1.b, 39979u, var_1.b)) & ~u_input.e) << ((~u_input.e ^ (u_input.e >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.e.x, u_input.a), u_input.e, u_input.e) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_sub_i32(u_input.d, u_input.c));
    global1 = array<f32, 19>();
    var var_3 = var_0.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.e.x), firstTrailingBit((vec3<u32>(0u, var_1.b, var_1.b) ^ vec3<u32>(1u, u_input.e.x, 0u)) & u_input.e) << (reverseBits(select(abs(u_input.e), select(u_input.e, vec3<u32>(1u, 6674u, var_1.b), true), vec3<bool>(var_1.a.x, var_1.a.x, global0.a))) % vec3<u32>(32u)), select((-u_input.b.yz >> ((vec2<u32>(var_1.b, var_1.b) >> (vec2<u32>(34288u, var_1.b) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (firstTrailingBit(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(var_0.x, 35398i)), !vec2<bool>(false, global0.a)), -var_0.x, u_input.e | _wgslsmith_mod_vec3_u32(reverseBits(u_input.e), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, u_input.a, var_1.b), vec3<u32>(4294967295u, 0u, var_1.b), true), firstLeadingBit(vec3<u32>(1u, var_1.b, 4294967295u)), ~vec3<u32>(4294967295u, var_1.b, 65250u))));
}

