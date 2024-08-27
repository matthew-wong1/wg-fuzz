struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(48507u), false);

var<private> global1: array<vec2<f32>, 6>;

var<private> global2: Struct_3 = Struct_3(1i, vec3<u32>(1u, 1u, 80323u), vec4<bool>(true, false, false, true));

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(1i, vec3<u32>(7683u, 41462u, 66836u), vec4<bool>(false, true, false, false)), Struct_3(2147483647i, vec3<u32>(18036u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, true)), Struct_3(-12892i, vec3<u32>(1u, 9186u, 1u), vec4<bool>(false, false, false, true)), Struct_3(8511i, vec3<u32>(0u, 1u, 21274u), vec4<bool>(true, false, true, true)), Struct_3(4069i, vec3<u32>(5654u, 38827u, 10808u), vec4<bool>(true, true, false, true)), Struct_3(7894i, vec3<u32>(68508u, 52069u, 4294967295u), vec4<bool>(true, false, true, true)), Struct_3(23492i, vec3<u32>(28401u, 4294967295u, 0u), vec4<bool>(true, false, false, false)), Struct_3(8111i, vec3<u32>(41841u, 55138u, 25129u), vec4<bool>(false, true, false, true)), Struct_3(-1i, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false)), Struct_3(-1i, vec3<u32>(4294967295u, 9332u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_3(1i, vec3<u32>(92280u, 0u, 74825u), vec4<bool>(false, false, true, false)), Struct_3(-1i, vec3<u32>(51342u, 1u, 7595u), vec4<bool>(false, true, false, false)), Struct_3(-1i, vec3<u32>(0u, 1u, 0u), vec4<bool>(true, true, false, false)));

var<private> global4: Struct_1 = Struct_1(32619u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_1(0u);
    var var_1 = global1[_wgslsmith_index_u32(~(~16110u), 6u)];
    let var_2 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x));
    global2 = global3[_wgslsmith_index_u32(arg_0.x, 13u)];
    var var_3 = Struct_2(global0.a, any(!select(select(global2.c.yxy, vec3<bool>(global2.c.x, global0.b, true), vec3<bool>(global2.c.x, global2.c.x, true)), !vec3<bool>(global2.c.x, global2.c.x, true), !global2.c.x)));
    return var_0.a;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    global1 = array<vec2<f32>, 6>();
    global4 = Struct_1(global0.a.a);
    global4 = Struct_1(1u << (func_3(vec3<u32>(_wgslsmith_mod_u32(7182u, global4.a), global2.b.x, global0.a.a)) % 32u));
    global4 = Struct_1(global0.a.a);
    let var_0 = Struct_2(Struct_1(~global0.a.a), true);
    return all(global2.c.yww);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 1u;
    global0 = Struct_2(Struct_1(firstLeadingBit(arg_2.a.a)), true);
    var var_1 = _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_mod_i32(-1i << (1u % 32u), -1i), -(~arg_1.a))), (-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.a), vec2<i32>(arg_1.a, 80344i)) | (select(vec2<i32>(global2.a, u_input.a), vec2<i32>(u_input.a, u_input.a), global0.b) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(14921i, global2.a), vec2<i32>(-1i, 1800i)))) << (~firstLeadingBit(~arg_1.b.yz) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_sub_vec4_u32(select(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.a, 33945u, global2.b.x, 4294967295u), vec4<u32>(global4.a, global2.b.x, arg_2.a.a, 0u)) << (vec4<u32>(~arg_1.b.x, firstTrailingBit(29852u), ~2791u, 0u) % vec4<u32>(32u)), ~vec4<u32>(global0.a.a, ~73999u, 4294967295u, _wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(4294967295u, arg_1.b.x, arg_2.a.a))), arg_1.c), vec4<u32>(53285u, ~_wgslsmith_mod_u32(~var_0, 1u), 0u, ~(~arg_1.b.x)));
    global3 = array<Struct_3, 13>();
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1244f, _wgslsmith_f_op_f32(652f + 567f), _wgslsmith_f_op_f32(max(-582f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1508f)))))), _wgslsmith_f_op_f32(round(239f))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(-749f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -1000f)))), _wgslsmith_f_op_f32(var_0.x * var_0.x));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.x));
    let var_3 = (~(~firstTrailingBit(vec4<u32>(4294967295u, 1u, global0.a.a, global4.a))) >> (~firstLeadingBit(vec4<u32>(44248u, global0.a.a, global4.a, global4.a)) % vec4<u32>(32u))) << (vec4<u32>(global0.a.a, ~arg_0, 24793u, min(~44376u, 4294967295u)) % vec4<u32>(32u));
    return Struct_4(vec4<i32>(-1i) * -vec4<i32>(u_input.a, firstTrailingBit(u_input.a), _wgslsmith_mult_i32(0i, 2147483647i), global2.a), arg_2, 2147483647i, Struct_3(arg_1, _wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a.a, 1u, arg_0), var_3.xyw), global2.b, !vec3<bool>(global2.c.x, false, arg_2.b)), select(global2.b, vec3<u32>(var_3.x, global2.b.x, global4.a), global2.c.xzy)), select(global2.c, select(!global2.c, !vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x), global2.c), global2.c)), arg_2);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = func_5(global4.a, countOneBits(global2.a >> (~(~arg_2.x) % 32u)), func_4(func_2(vec2<bool>(!arg_1, !arg_1)), Struct_3(firstLeadingBit(2147483647i), ~vec3<u32>(global0.a.a, 37617u, global4.a) & select(arg_2.wyw, vec3<u32>(24570u, 4294967295u, global4.a), global0.b), global2.c), Struct_2(Struct_1(119618u), global0.b)));
    var var_1 = any(select(vec2<bool>(arg_1, true), !vec2<bool>(global0.b, true), vec2<bool>(true, !var_0.e.b)));
    var var_2 = arg_2.xzy;
    var var_3 = var_0;
    let var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.d.b.x, _wgslsmith_add_u32(61388u, global2.b.x), abs(3386u)), arg_2)), true);
    return !vec4<bool>(true, var_3.e.b, false, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1372f))));
    global1 = array<vec2<f32>, 6>();
    let var_1 = ~countOneBits(select(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global0.a.a, 1u, 4294967295u)), ~global2.b), ~vec3<u32>(0u, global2.b.x, global0.a.a), global2.c.xzw));
    global3 = array<Struct_3, 13>();
    let var_2 = reverseBits(~_wgslsmith_mult_u32(23354u, 10435u));
    global2 = Struct_3(-31740i, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, global4.a, var_1.x)), abs(~global2.b)), select(select(global2.b, vec3<u32>(var_2, 7649u, 32920u), global0.b), vec3<u32>(25179u, ~global2.b.x, 4294967295u), !global2.c.x), ~(~vec3<u32>(1u, global4.a, 28899u))), select(!(!func_1(vec3<i32>(u_input.a, u_input.a, u_input.a), false, vec4<u32>(global4.a, var_1.x, global4.a, 16822u))), global2.c, !func_5(42871u, global2.a, func_5(var_1.x, u_input.a, Struct_2(global0.a, false)).e).e.b));
    global0 = func_5(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(global0.a.a, 35590u), 37771u), _wgslsmith_dot_vec3_u32(var_1, ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(var_2, global4.a, 4294967295u)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, 7829i | u_input.a, countOneBits(-27566i)), -vec3<i32>(2147483647i, -2147483647i, u_input.a)), 1i), Struct_2(Struct_1(global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1259f, 998f)) + _wgslsmith_f_op_f32(1000f * 723f)) < _wgslsmith_f_op_f32(select(2161f, _wgslsmith_f_op_f32(-599f * -375f), select(global0.b, true, true))))).e;
    let x = u_input.a;
    s_output = StorageBuffer(180f, (~(global2.b.x & 4294967295u) >> (~firstTrailingBit(var_2) % 32u)) ^ func_5(36789u, global2.a, Struct_2(global0.a, true && global2.c.x)).d.b.x);
}

