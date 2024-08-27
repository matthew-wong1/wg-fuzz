struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: array<f32, 19>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = 66888u != _wgslsmith_mult_u32(45947u, _wgslsmith_add_u32(arg_1.a.e.x, select(min(1u, global0.e.x), _wgslsmith_dot_vec4_u32(global0.e, vec4<u32>(0u, 1u, global0.d, arg_1.b.d.e.x)), u_input.b == global0.d)));
    var_0 = global2.x;
    var var_1 = arg_1.b.e.zx;
    var var_2 = arg_1.b.d;
    var var_3 = vec2<bool>(global2.x, true);
    return _wgslsmith_sub_vec2_i32(vec2<i32>(abs(-9121i), global0.c.x), var_2.c);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    let var_0 = true;
    var var_1 = select(true || var_0, all(!select(vec4<bool>(arg_0.d.b.x, true, arg_0.d.b.x, global0.b.x), select(vec4<bool>(true, var_0, var_0, global0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, true, true), false), any(vec4<bool>(global0.b.x, false, false, arg_0.b.x)))), false);
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(28125i, global0.b, abs(vec2<i32>(global0.c.x, ~global0.a)), func_3(Struct_2(-32910i, vec3<bool>(global0.b.x, global2.x, arg_0.x), 0u, Struct_1(global0.a, arg_0, global0.c, 0u, vec4<u32>(u_input.b, 69152u, 4294967295u, 104088u)), vec3<u32>(u_input.b, 45092u, 1949u)), global0.e.zwy) ^ 15329u, ~(~global0.e)), Struct_2(-_wgslsmith_add_i32(global0.c.x >> (u_input.b % 32u), u_input.a), global2.ywy, _wgslsmith_dot_vec4_u32(global0.e, _wgslsmith_sub_vec4_u32(global0.e, vec4<u32>(37339u, 0u, 1u, 1u))) << (_wgslsmith_mod_u32(44192u, 4294967295u) % 32u), Struct_1(global0.a, arg_0, -global0.c, ~4294967295u, global0.e), ~(~countOneBits(global0.e.xwx))), true, abs(min(vec4<i32>(u_input.a, u_input.a, 1i, -1i), vec4<i32>(-1i, global0.a, -48199i, 28512i)) | vec4<i32>(_wgslsmith_mult_i32(u_input.a, global0.c.x), min(-2147483647i, 0i), 0i, 0i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(4294967295u, 19u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.e.x, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 19u)]))))));
    var_0 = Struct_3(Struct_1(-1i, global2.zz, _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(global0.c, var_0.d.zw)), global0.c, vec2<i32>(43687i, 1i)), var_0.b.e.x, _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(var_0.a.e, global0.e), global0.e, vec4<bool>(arg_0.x, false, true, false)), global0.e, ~max(vec4<u32>(global0.d, var_0.a.d, global0.d, 20409u), vec4<u32>(0u, global0.e.x, u_input.b, 19871u)))), Struct_2(~(~abs(-1i)), vec3<bool>(global0.b.x, all(vec3<bool>(var_0.a.b.x, false, true)), true), 3660u, var_0.b.d, global0.e.zwx), var_0.c, var_0.d, _wgslsmith_f_op_f32(-1162f - -635f));
    global2 = select(!select(!(!vec4<bool>(arg_0.x, global2.x, false, true)), !select(vec4<bool>(false, var_0.c, global2.x, var_0.c), vec4<bool>(var_0.a.b.x, false, arg_0.x, global2.x), vec4<bool>(arg_0.x, false, global0.b.x, arg_0.x)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(64903u, 19u)]) < _wgslsmith_f_op_f32(-var_0.e)), select(!vec4<bool>(true, global0.b.x, false, all(vec2<bool>(global2.x, true))), !(!select(vec4<bool>(global2.x, false, arg_0.x, true), vec4<bool>(global2.x, var_0.c, var_0.c, var_0.a.b.x), vec4<bool>(false, true, false, false))), !select(select(vec4<bool>(true, var_0.c, false, global0.b.x), vec4<bool>(var_0.a.b.x, false, arg_0.x, false), var_0.c), vec4<bool>(arg_0.x, arg_0.x, global0.b.x, arg_0.x), vec4<bool>(true, global2.x, var_0.a.b.x, global0.b.x))), !(!(!select(vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(true, var_0.a.b.x, var_0.b.d.b.x, false), false))));
    let var_1 = Struct_3(Struct_1(1i >> (~_wgslsmith_div_u32(20509u, u_input.b) % 32u), var_0.a.b, -(var_0.b.d.c | vec2<i32>(global0.a, global0.a)) >> (~(vec2<u32>(47712u, 77121u) ^ global0.e.xx) % vec2<u32>(32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, 61972u)), ~var_0.b.e.xz), 9438u), global0.e), var_0.b, true, vec4<i32>(var_0.a.a, -23726i, ~_wgslsmith_sub_i32(2147483647i, 28712i), ~_wgslsmith_mod_i32(-global0.a, u_input.a | -2147483647i)), 1772f);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1342f, var_0.e, -1238f, -369f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 19u)], var_0.e, 851f, 1195f)), !vec4<bool>(var_1.a.b.x, true, var_0.b.d.b.x, false)))))))));
    return vec3<bool>(any(vec3<bool>(any(select(vec4<bool>(true, false, global2.x, false), vec4<bool>(false, var_0.c, global0.b.x, var_0.b.b.x), false)), global2.x, var_1.c)), any(select(select(global2.zx, !var_1.b.d.b, true), select(!vec2<bool>(false, var_0.c), select(vec2<bool>(false, false), vec2<bool>(true, true), false), any(global1[_wgslsmith_index_u32(var_1.a.d, 23u)])), true || all(global2.wz))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.b | 36649u) << (16181u % 32u);
    let var_1 = reverseBits(~u_input.b);
    global1 = array<vec3<bool>, 23>();
    var var_2 = Struct_1(global0.c.x, global2.xw, ~_wgslsmith_sub_vec2_i32(~func_1(global1[_wgslsmith_index_u32(global0.e.x, 23u)], Struct_3(Struct_1(global0.a, vec2<bool>(false, true), vec2<i32>(u_input.a, u_input.a), 4294967295u, global0.e), Struct_2(-21063i, vec3<bool>(global0.b.x, true, false), var_1, Struct_1(-1511i, global0.b, global0.c, u_input.b, vec4<u32>(global0.e.x, u_input.b, 4294967295u, var_1)), global0.e.zxx), global2.x, vec4<i32>(global0.a, 214i, global0.a, u_input.a), global3[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<i32>(-9777i, 1i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, var_1)), _wgslsmith_div_u32(var_1, 4294967295u), ~16284u), global0.e.xwy), global0.e);
    let var_3 = Struct_2(var_2.a, func_2(select(global2.yw, !global2.yw, any(select(vec4<bool>(false, var_2.b.x, true, var_2.b.x), vec4<bool>(true, var_2.b.x, false, var_2.b.x), vec4<bool>(true, var_2.b.x, var_2.b.x, global0.b.x))))), var_1, Struct_1(_wgslsmith_clamp_i32(1i, func_1(vec3<bool>(var_2.b.x, false, global0.b.x), Struct_3(Struct_1(36008i, vec2<bool>(true, true), vec2<i32>(28637i, u_input.a), 39525u, var_2.e), Struct_2(u_input.a, global1[_wgslsmith_index_u32(global0.d, 23u)], 4294967295u, Struct_1(u_input.a, global0.b, vec2<i32>(-2147483647i, global0.a), 0u, global0.e), vec3<u32>(u_input.b, 8214u, 0u)), false, vec4<i32>(var_2.a, var_2.c.x, 1i, u_input.a), global3[_wgslsmith_index_u32(u_input.b, 19u)])).x, _wgslsmith_sub_i32(select(6401i, 0i, false), -2163i)), vec2<bool>(var_1 == 1u, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 19u)] + 1287f) != global3[_wgslsmith_index_u32(var_2.e.x, 19u)]), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(73245i, u_input.a), var_2.a, u_input.a), -1i), 40040u, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.e.x, var_2.d, u_input.b, 18947u), vec4<u32>(4294967295u, 4294967295u, var_2.d, 4294967295u)))), reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 7721u), ~vec3<u32>(global0.e.x, 43819u, var_2.e.x), abs(global0.e.xzx)), ~(~var_2.e.zyy))));
    let var_4 = ~(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-23863i, 36793i, u_input.a)), (vec3<i32>(-1i, -27931i, 4044i) << (global0.e.zxx % vec3<u32>(32u))) << (~vec3<u32>(4294967295u, 31016u, var_2.d) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_3.d.a, global0.c.x), vec3<i32>(-18013i, 5551i, var_3.a)) >> (global0.e.yxx % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 17419i, var_3.a) & vec3<i32>(38259i, 38986i, u_input.a), vec3<i32>(var_2.c.x, 2147483647i, var_2.c.x)), -39825i, _wgslsmith_mod_i32(min(-1i, -61227i), -var_2.a)));
    let var_5 = _wgslsmith_sub_vec4_i32((vec4<i32>(1i, 37131i, var_3.a, -40929i) << (min(select(vec4<u32>(u_input.b, var_2.e.x, var_1, 1986u), vec4<u32>(21502u, 30293u, 4294967295u, 1u), vec4<bool>(global2.x, false, global2.x, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.c, var_2.d, 4294967295u, u_input.b), var_2.e, vec4<u32>(var_2.d, 56363u, global0.e.x, global0.e.x))) % vec4<u32>(32u))) << (global0.e % vec4<u32>(32u)), select(select(-firstLeadingBit(vec4<i32>(global0.a, -1i, 0i, -1i)), -vec4<i32>(-22967i, var_2.c.x, -14985i, 4421i), var_3.b.x), ((vec4<i32>(10439i, -1i, -37787i, -2147483647i) << (var_2.e % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.d.a, -10080i, global0.c.x, 39451i), vec4<i32>(2147483647i, var_4.x, global0.c.x, u_input.a))) >> (abs(vec4<u32>(10431u, global0.e.x, 4294967295u, 212u)) % vec4<u32>(32u)), any(!(!vec4<bool>(true, var_2.b.x, global2.x, false)))));
    global1 = array<vec3<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(59604u, 19u)], global3[_wgslsmith_index_u32(var_2.e.x, 19u)], 195f, global3[_wgslsmith_index_u32(3615u, 19u)]), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(var_2.e.x, 19u)], -826f, global3[_wgslsmith_index_u32(53458u, 19u)]), global0.b.x)) - vec4<f32>(global3[_wgslsmith_index_u32(var_3.c, 19u)], global3[_wgslsmith_index_u32(global0.e.x, 19u)], 130f, -140f))))), _wgslsmith_div_vec4_f32(vec4<f32>(629f, 3002f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_3.d.e.x, 19u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(33427u, 19u)], -1000f), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_1, 19u)], -953f)), -1179f))), 27589u);
}

