struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
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

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<vec2<f32>, 23>;

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global4: array<vec2<f32>, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(max(u_input.b.x, ~u_input.a), ~42287u ^ (56040u << (~u_input.a % 32u)), global0[_wgslsmith_index_u32(abs(0u | firstTrailingBit(~u_input.a)), 10u)], vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, 1163u, u_input.b.x)), ~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u)), ~(~70956u), _wgslsmith_div_u32(~(66526u & u_input.b.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 78893u), vec4<u32>(10220u, 30676u, 37337u, 8312u)))), _wgslsmith_add_u32(~u_input.a, max(43208u, 4294967295u)) & ~u_input.b.x));
    var_0 = Struct_3((firstTrailingBit(1u) >> (~(~17221u) % 32u)) << (var_0.d.x % 32u), u_input.a, Struct_2(-1052f), var_0.d);
    let var_1 = Struct_1(63938i & _wgslsmith_mult_i32(global3.x, ~global3.x), vec3<i32>(global3.x, _wgslsmith_mod_i32(i32(-1i) * -11432i, global3.x | ~global3.x), -_wgslsmith_add_i32(4101i, abs(-27713i))), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, 15929i, global3.x, global3.x), select(vec4<i32>(global3.x, global3.x, global3.x, -13615i), vec4<i32>(global3.x, global3.x, global3.x, global3.x), true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, 39425i, global3.x, 2147483647i) & vec4<i32>(45304i, 13194i, global3.x, global3.x), vec4<i32>(global3.x, 25594i, global3.x, -4086i), vec4<i32>(69691i, global3.x, global3.x, -44022i)))), ~reverseBits(abs(countOneBits(vec2<i32>(global3.x, 1i)))), vec3<i32>(min(global3.x, countOneBits(-10445i)), select(global3.x, -2147483647i, select(false, false, false) & all(vec4<bool>(true, true, true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(-19423i, _wgslsmith_mod_i32(0i, global3.x), _wgslsmith_sub_i32(16422i, global3.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 0i, -2147483647i, 0i), vec4<i32>(0i, -2147483647i, global3.x, 30937i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 1i, global3.x, global3.x), vec4<i32>(global3.x, global3.x, 22190i, global3.x)), global3.x))));
    let var_2 = Struct_1(_wgslsmith_div_i32(global3.x | firstTrailingBit(-1i), global3.x), var_1.b, reverseBits(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_1.d.x, 47093i, var_1.d.x, global3.x) | vec4<i32>(var_1.d.x, 0i, var_1.b.x, 14762i), select(vec4<i32>(1i, 53994i, global3.x, var_1.c.x), var_1.c, vec4<bool>(false, false, false, true))), ~firstLeadingBit(vec4<i32>(-2147483647i, var_1.e.x, -52946i, -20481i)), -var_1.c)), countOneBits(vec2<i32>(var_1.b.x, var_1.b.x) | _wgslsmith_clamp_vec2_i32(var_1.c.yz, ~vec2<i32>(-1i, global3.x), max(vec2<i32>(var_1.a, -1i), var_1.b.yy))), -min(-vec3<i32>(-43269i, var_1.a, -1i), ~vec3<i32>(-10145i, 1i, global3.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f), _wgslsmith_f_op_f32(trunc(var_0.c.a))), var_0.c.a))));
    return vec4<u32>(~(~21874u), _wgslsmith_mod_u32(var_0.d.x << ((firstTrailingBit(var_0.a) >> (12032u % 32u)) % 32u), 1u), firstLeadingBit(~(~var_0.d.x)), var_0.a);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.a, u_input.a), vec4<u32>(0u, 27033u, 4294967295u, 2971u)), func_3()), min(_wgslsmith_add_u32(u_input.b.x, u_input.c.x << (1u % 32u)), 0u)) | 45103u;
    let var_1 = true;
    global4 = array<vec2<f32>, 3>();
    let var_2 = 5352u;
    global3 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.x, global3.x), ~global3.x << (_wgslsmith_mult_u32(u_input.c.x, var_2) % 32u)), 2147483647i & _wgslsmith_mult_i32(global3.x, _wgslsmith_div_i32(1i ^ global3.x, -39797i)));
    return 7186u >> (reverseBits(~(~_wgslsmith_div_u32(0u, 1u))) % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_1.a;
    var var_1 = vec4<bool>(_wgslsmith_mult_u32(~u_input.c.x, arg_3.x) < (firstLeadingBit(u_input.c.x) << (~firstLeadingBit(4294967295u) % 32u)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))))), false, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)) == (countOneBits(~1u) == min(max(29224u, u_input.c.x), arg_3.x)));
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_clamp_i32(1i, global3.x, max(global3.x, arg_0))) >> (u_input.b.x % 32u), min(-(~(vec3<i32>(2147483647i, -42133i, 17702i) >> (arg_3.wwx % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-42403i, -2147483647i, 2147483647i, arg_0), vec4<i32>(-35898i, global3.x, 0i, global3.x)), arg_0, -max(44379i, arg_0))), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-arg_0), select(-1i, 0i, true) ^ global3.x, arg_0, global3.x), select(vec4<i32>(1i, arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 3729i), vec2<i32>(arg_0, 1i)), ~36955i), min(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0, -2147483647i, global3.x), vec4<i32>(global3.x, global3.x, arg_0, -1i)), -vec4<i32>(global3.x, arg_0, arg_0, 64431i)), var_1.x)), _wgslsmith_sub_vec2_i32(max(vec2<i32>(_wgslsmith_div_i32(-1i, global3.x), -2147483647i), countOneBits(max(vec2<i32>(global3.x, -1i), vec2<i32>(-2147483647i, global3.x)))), reverseBits(abs(-vec2<i32>(global3.x, -2147483647i)))), vec3<i32>(_wgslsmith_div_i32(1i, ~(-global3.x)), global3.x, ~(-2147483647i)));
    let var_3 = Struct_3(u_input.b.x, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(~1u, arg_3.x, u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_3.x, 40641u), firstTrailingBit(max(4294967295u, arg_3.x)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1371f * arg_2.a)))), firstLeadingBit(arg_3));
    var var_4 = _wgslsmith_dot_vec4_i32(var_2.c, var_2.c);
    return select(vec4<bool>(false, true, 51046u >= firstLeadingBit(var_3.d.x), false), !(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), firstLeadingBit(-57661i) >= select(global3.x ^ global3.x, 1i, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) & !var_1.x));
}

fn func_1() -> bool {
    let var_0 = any(select(select(vec4<bool>(false, true, true, all(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), func_4(abs(-2147483647i), Struct_2(1f), Struct_2(1230f), vec4<u32>(func_2(), 13792u, u_input.b.x, 47783u)), !(!(global3.x < -1i))));
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    let var_1 = u_input.c.x;
    global3 = vec2<i32>(select(global3.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 3010i, global3.x), abs(vec3<i32>(22040i, global3.x, -12885i)))), !var_0), global3.x);
    return func_4(-global3.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-428f, 1156f), _wgslsmith_div_f32(-1000f, 378f))) - _wgslsmith_f_op_f32(abs(1f)))), Struct_2(-286f), vec4<u32>(~var_1, func_2(), select(9288u, var_1, !var_0), 1u) << (vec4<u32>(u_input.b.x, 4294967295u, ~(0u ^ var_1), ~(~var_1)) % vec4<u32>(32u))).x;
}

fn func_5(arg_0: u32, arg_1: bool) -> bool {
    global1 = array<vec2<f32>, 23>();
    global3 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(global3.x, 2147483647i) << (vec2<u32>(60678u, 4294967295u) % vec2<u32>(32u))), firstLeadingBit(firstTrailingBit(vec2<i32>(-55015i, 0i))), -max(max(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, 1i)), vec2<i32>(25947i, 1i))));
    var var_0 = ~select(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(global3.x, 1i)), select(abs(abs(vec2<i32>(1i, global3.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(-4655i, global3.x), vec2<i32>(-16931i, 33603i)) >> (_wgslsmith_mult_vec2_u32(u_input.c.xx, u_input.c.xz) % vec2<u32>(32u)), !(!vec2<bool>(arg_1, false))), true);
    var var_1 = u_input.c;
    let var_2 = select(!func_4(global3.x, Struct_2(_wgslsmith_f_op_f32(ceil(590f))), Struct_2(698f), vec4<u32>(firstTrailingBit(20020u), var_1.x, _wgslsmith_add_u32(16226u, var_1.x), var_1.x)).xx, vec2<bool>(true, func_1()), vec2<bool>(select(arg_1, false, !arg_1), arg_1));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 3>();
    let var_0 = _wgslsmith_mod_i32(global3.x, 1i);
    global4 = array<vec2<f32>, 3>();
    global1 = array<vec2<f32>, 23>();
    let var_1 = func_5(65586u << (~(~1u) % 32u), func_1());
    var var_2 = select(!vec4<bool>(var_1, var_1, true, true), select(!vec4<bool>(var_0 <= 0i, false, var_1, true), vec4<bool>(all(select(vec2<bool>(false, var_1), vec2<bool>(false, true), vec2<bool>(false, false))), true, !var_1, var_1), true), true);
    var var_3 = -1564f;
    var var_4 = abs(func_3().zyw);
    var var_5 = 1257f;
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}

