struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 368f;

var<private> global1: array<vec3<bool>, 24>;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 12u)];
    let var_1 = u_input.d.x;
    return vec2<u32>(~21461u, ~((~var_0.d.x ^ (4073u >> (var_0.d.x % 32u))) >> (u_input.e.x % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    return Struct_1(arg_1.a, !any(vec2<bool>(false, true)), vec2<u32>(~global2.x, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 1u), ~vec2<u32>(abs(12383u), ~54666u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = ((~(~u_input.e.xxy) ^ ~vec3<u32>(28513u, global2.x, 1u)) << (~vec3<u32>(_wgslsmith_add_u32(arg_1.c.x, arg_0.c.x), global2.x, _wgslsmith_dot_vec2_u32(arg_2.yy, arg_2.ww)) % vec3<u32>(32u))) << (vec3<u32>(~_wgslsmith_mod_u32(1u, abs(arg_0.c.x)), 16933u, arg_2.x) % vec3<u32>(32u));
    var var_1 = !func_2(func_2(arg_0, Struct_1(arg_1.a, false, vec2<u32>(0u, var_0.x), arg_1.d, func_1(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(974f))), Struct_1(arg_1.a, true, var_0.yy >> (var_0.yz % vec2<u32>(32u)), ~arg_0.d, arg_2.wz)), Struct_1(arg_1.a, arg_0.b, _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(1u, 32849u)), ~vec2<u32>(28546u, u_input.e.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, var_0.x, 0u), vec3<u32>(arg_2.x, 4294967295u, 105571u) << (vec3<u32>(0u, arg_0.c.x, var_0.x) % vec3<u32>(32u))), arg_1.d.yy), arg_0.a.x, arg_1).b;
    var var_2 = false;
    global1 = array<vec3<bool>, 24>();
    let var_3 = func_2(arg_0, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), true, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.e, u_input.e.wz), vec2<u32>(u_input.a, arg_2.x) ^ arg_2.xz), _wgslsmith_clamp_vec3_u32(arg_2.wwx | vec3<u32>(var_0.x, 22994u, global2.x), arg_0.d | vec3<u32>(u_input.b.x, 12881u, 556u), vec3<u32>(4294967295u, var_0.x, var_0.x)), ~arg_1.e | select(arg_2.zy, vec2<u32>(var_0.x, 4294967295u), vec2<bool>(arg_1.b, false))), func_2(func_2(Struct_1(vec4<f32>(-1000f, arg_1.a.x, arg_1.a.x, -684f), true, arg_2.yx, vec3<u32>(4294967295u, 4294967295u, arg_2.x), arg_1.c), global3[_wgslsmith_index_u32(var_0.x, 12u)], _wgslsmith_f_op_f32(f32(-1f) * -738f), Struct_1(arg_0.a, arg_0.b, var_0.zy, arg_2.xyw, arg_0.e)), func_2(Struct_1(vec4<f32>(677f, -1000f, arg_0.a.x, 1454f), false, vec2<u32>(arg_0.c.x, arg_2.x), u_input.e.xyw, vec2<u32>(12589u, arg_1.c.x)), Struct_1(arg_0.a, arg_1.b, arg_1.c, arg_2.wxw, vec2<u32>(30496u, arg_2.x)), -1355f, Struct_1(vec4<f32>(-840f, -737f, -1145f, 523f), true, vec2<u32>(9733u, 0u), vec3<u32>(6731u, var_0.x, u_input.a), vec2<u32>(78470u, 4294967295u))), _wgslsmith_div_f32(-916f, _wgslsmith_f_op_f32(-arg_1.a.x)), Struct_1(arg_0.a, true, vec2<u32>(75678u, 55944u) << (var_0.yx % vec2<u32>(32u)), arg_0.d, vec2<u32>(25402u, 84433u))), -636f, func_2(arg_0, func_2(Struct_1(arg_1.a, true, vec2<u32>(18544u, var_0.x), vec3<u32>(global2.x, 10491u, u_input.a), vec2<u32>(1u, 3572u)), func_2(global3[_wgslsmith_index_u32(0u, 12u)], arg_1, 556f, Struct_1(vec4<f32>(-132f, 1203f, arg_0.a.x, 390f), false, arg_1.c, vec3<u32>(var_0.x, var_0.x, 72585u), vec2<u32>(arg_1.d.x, 24790u))), _wgslsmith_f_op_f32(arg_1.a.x - -1000f), func_2(global3[_wgslsmith_index_u32(6104u, 12u)], global3[_wgslsmith_index_u32(12639u, 12u)], arg_0.a.x, Struct_1(vec4<f32>(1075f, 569f, 1000f, arg_1.a.x), true, arg_0.e, arg_1.d, vec2<u32>(global2.x, 75007u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(976f + 814f))), arg_1)), 665f, global3[_wgslsmith_index_u32(38582u, 12u)]);
    return ~min(vec2<u32>(abs(37653u), global2.x) << (_wgslsmith_mod_vec2_u32(func_2(arg_0, global3[_wgslsmith_index_u32(u_input.a, 12u)], 712f, Struct_1(var_3.a, false, vec2<u32>(arg_0.e.x, arg_0.d.x), var_3.d, var_0.yx)).d.yx, reverseBits(vec2<u32>(arg_0.d.x, 28176u))) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(max(73971u, global2.x)), ~0u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, 1000f, _wgslsmith_f_op_f32(arg_1.a.x - arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -800f)))))), all(!select(!vec2<bool>(true, arg_2), !vec2<bool>(false, arg_0.b), arg_2)), vec2<u32>(arg_0.d.x, 1u), ~(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(81521u, global2.x, 51629u)), _wgslsmith_mod_vec3_u32(arg_0.d, arg_0.d))), vec2<u32>(arg_0.c.x, max(2381u, 1u)));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(sign(781f))));
    let var_2 = u_input.c;
    var var_3 = ~global2.x;
    global3 = array<Struct_1, 12>();
    return StorageBuffer((vec4<i32>(1i, -21138i, -u_input.d.x, _wgslsmith_mult_i32(u_input.c.x, -52682i)) & ~vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, -1i)) >> (u_input.e % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f)))), global2.x, ~countOneBits(u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - 819f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(569f - arg_1.a.x) * var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(u_input.e.x, 12u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-473f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2303f), _wgslsmith_f_op_f32(f32(-1f) * -685f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1541f, 1524f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1466f))));
    global2 = firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(~1u, ~5921u), func_1(_wgslsmith_f_op_f32(-var_1.x))));
    let var_2 = global3[_wgslsmith_index_u32(var_0.e.x, 12u)];
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_4 = 87180u;
    let var_5 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(81658u >> (~(~global2.x) % 32u), 0u), 12u)];
    let x = u_input.a;
    s_output = func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) * _wgslsmith_f_op_f32(566f * var_5.a.x)), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(max(var_0.a.x, -644f))), 391f, _wgslsmith_f_op_f32(ceil(885f))), var_5.b, vec2<u32>(30272u, var_0.e.x) << (func_3(func_2(Struct_1(var_2.a, var_5.b, u_input.e.wx, vec3<u32>(u_input.b.x, 4294967295u, 105243u), var_0.d.zz), global3[_wgslsmith_index_u32(4294967295u, 12u)], var_3.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), func_2(Struct_1(var_3.a, var_3.b, var_0.e, var_0.d, var_5.c), Struct_1(vec4<f32>(var_0.a.x, -1000f, 1341f, 312f), var_3.b, var_3.c, vec3<u32>(32721u, global2.x, var_3.d.x), var_0.e), var_3.a.x, Struct_1(var_5.a, var_5.b, var_0.d.yx, u_input.b, vec2<u32>(global2.x, 67784u))), vec4<u32>(global2.x, var_2.d.x, var_5.c.x, var_0.c.x) << (vec4<u32>(4294967295u, 34400u, global2.x, u_input.a) % vec4<u32>(32u))) % vec2<u32>(32u)), reverseBits(var_3.d), var_0.d.yy), global3[_wgslsmith_index_u32(3577u, 12u)], !(!any(select(vec2<bool>(true, var_2.b), vec2<bool>(var_0.b, false), var_5.b))));
}

