struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-302f, -290f, 278f, 640f), vec4<f32>(-227f, -669f, -786f, 1177f), vec4<f32>(-1000f, 504f, 436f, 112f), vec4<f32>(1000f, 426f, 1150f, -601f), vec4<f32>(-557f, 861f, -302f, 793f), vec4<f32>(-382f, -1418f, -1184f, -527f), vec4<f32>(-750f, -800f, 1000f, -902f), vec4<f32>(765f, 2012f, -1317f, 721f));

var<private> global3: array<bool, 14>;

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_div_f32(1722f, _wgslsmith_f_op_f32(max(-443f, -1609f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-945f - -1027f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-136f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(978f * 366f)))) * -1489f));
    global1 = arg_0;
    let var_2 = Struct_1(true, ~0u, vec2<i32>(global1.d.x, arg_0.c.x), -vec4<i32>(global1.c.x, _wgslsmith_add_i32(0i, ~arg_0.e.x), 2147483647i, 1i), arg_0.d.zzy << (vec3<u32>(1u, 0u, reverseBits(reverseBits(1u))) % vec3<u32>(32u)));
    let var_3 = arg_1;
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1147f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1296f, _wgslsmith_f_op_f32(abs(-1148f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f)))))), -1007f);
}

fn func_2() -> u32 {
    let var_0 = global4.x;
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1063f, 1080f, false)) - -151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-125f, 288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f + 773f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 772f, 342f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-515f, 602f, 2040f) + vec3<f32>(1000f, -823f, -533f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, -491f, -975f))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(global1.b, 21u)], Struct_1(global1.a, 52314u, u_input.d.yy, vec4<i32>(559i, 13822i, 2147483647i, u_input.b), u_input.d))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1682f, 493f, 1454f))))));
    global1 = global0[_wgslsmith_index_u32(global1.b, 21u)];
    return abs(global1.b);
}

fn func_1() -> u32 {
    var var_0 = !global1.a;
    global2 = array<vec4<f32>, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1002f, -478f));
    let var_2 = ~vec4<u32>(~func_2(), global1.b, 1u, min(~firstTrailingBit(4294967295u), abs(1u)));
    var var_3 = vec2<i32>(37697i, ~global1.e.x << (func_2() % 32u));
    return ~global1.b & 1u;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global4 = !select(vec2<bool>(false, false), !select(vec2<bool>(true, global3[_wgslsmith_index_u32(global1.b, 14u)]), vec2<bool>(false, true), global4.x | true), vec2<bool>(false, global1.a));
    let var_0 = -_wgslsmith_mod_vec2_i32(arg_0.xx, ~(~vec2<i32>(-1i, u_input.d.x)));
    global1 = Struct_1(true, ~1u, _wgslsmith_mod_vec2_i32(~select(-global1.c, _wgslsmith_mod_vec2_i32(arg_0.wz, u_input.a.yx), vec2<bool>(false, false)), ~vec2<i32>(_wgslsmith_div_i32(-28029i, u_input.a.x), 2147483647i)), ~vec4<i32>(~firstLeadingBit(1i), i32(-1i) * -79038i, arg_0.x, firstTrailingBit(-22908i)), select(countOneBits(u_input.d), arg_0.wzx, select(select(select(vec3<bool>(true, global1.a, global3[_wgslsmith_index_u32(global1.b, 14u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(arg_1, 14u)]), vec3<bool>(global4.x, global1.a, global1.a)), vec3<bool>(global4.x, global3[_wgslsmith_index_u32(18546u, 14u)], false), global1.a), vec3<bool>(all(vec2<bool>(false, global3[_wgslsmith_index_u32(global1.b, 14u)])), all(vec3<bool>(true, false, global4.x)), true), global4.x && true)));
    let var_1 = _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(global1.b, global1.b))), ~vec2<u32>(~32635u, 98581u >> (global1.b % 32u))) & ~vec2<u32>(arg_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(25538u, 4294967295u, 1u, 69276u), vec4<u32>(global1.b, global1.b, 46725u, global1.b)));
    var var_2 = global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, var_1.x, 23334u), vec3<u32>(13622u, arg_1, 128586u))), vec3<u32>(var_1.x, var_1.x, var_1.x) | _wgslsmith_mult_vec3_u32(vec3<u32>(40139u, 0u, var_1.x), vec3<u32>(11714u, arg_1, 40400u))), func_1()), 21u)];
    return Struct_1(all(!select(!vec2<bool>(global4.x, global1.a), !vec2<bool>(true, var_2.a), global4.x)), ~(~select(var_1.x, 1u << (0u % 32u), all(vec3<bool>(global3[_wgslsmith_index_u32(global1.b, 14u)], false, false)))), abs(firstTrailingBit(vec2<i32>(~global1.e.x, ~14442i))), vec4<i32>(arg_0.x, ~firstTrailingBit(var_0.x), -43309i, select(2147483647i, _wgslsmith_mod_i32(var_2.c.x >> (var_2.b % 32u), 0i), false)), vec3<i32>(14363i, -_wgslsmith_dot_vec2_i32(~vec2<i32>(-6693i, 0i), arg_0.xw), -27234i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, ~17685u, 1u), ~(vec4<u32>(global1.b, 1u, global1.b, 4294967295u) | vec4<u32>(1u, global1.b, 46190u, 4294967295u))), ~(vec4<u32>(23699u, global1.b, 33537u, global1.b) | vec4<u32>(global1.b, 1126u, 57607u, 1u)));
    var var_1 = func_4(vec4<i32>(8306i, u_input.d.x, -u_input.d.x, global1.e.x), func_1());
    let var_2 = vec3<i32>(global1.e.x, _wgslsmith_dot_vec4_i32(global1.d | -global1.d, countOneBits(select(~vec4<i32>(var_1.e.x, global1.c.x, 12941i, -56055i), ~vec4<i32>(var_1.c.x, u_input.b, global1.d.x, 39030i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15748u, 9395u, var_1.b), vec3<u32>(var_1.b, 1u, 102318u)), 14u)]))), _wgslsmith_add_i32(var_1.e.x, -58829i << (_wgslsmith_mult_u32(global1.b, 0u) % 32u)) & ~(-_wgslsmith_sub_i32(global1.d.x, 27969i)));
    global4 = vec2<bool>(!(!any(select(vec3<bool>(var_1.a, global4.x, var_1.a), vec3<bool>(global1.a, true, true), true))), true);
    var var_3 = 35023i;
    let var_4 = !select(!(!select(vec3<bool>(global1.a, global3[_wgslsmith_index_u32(15883u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(false, false, true), global4.x)), vec3<bool>(select(global1.a, !global1.a, global1.a || var_1.a), global1.a, !global4.x), select(vec3<bool>(2147483647i >= global1.d.x, false, false), select(vec3<bool>(true, global1.a, global4.x), select(vec3<bool>(false, true, var_1.a), vec3<bool>(false, false, global1.a), var_1.a), all(vec2<bool>(false, false))), !(!var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.d.xxy);
}

