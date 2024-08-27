struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, -1460f, vec4<u32>(53269u, 4294967295u, 0u, 4294967295u), vec4<i32>(-10169i, i32(-2147483648), 35559i, -13332i));

var<private> global1: array<u32, 1> = array<u32, 1>(11224u);

var<private> global2: bool = true;

var<private> global3: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, abs(_wgslsmith_dot_vec3_i32(global0.d.xzw, vec3<i32>(global0.a, global0.d.x, -4923i))), abs(-global0.a)), -vec4<i32>(42386i, _wgslsmith_sub_i32(global0.a, -57514i), global0.a, global0.a));
    var var_1 = u_input.a;
    var var_2 = Struct_1(~global0.a, _wgslsmith_f_op_f32(trunc(-1553f)), global0.c, ~global0.d);
    var_2 = Struct_1(var_2.a, -1013f, _wgslsmith_add_vec4_u32(vec4<u32>(~(~arg_0), ~13956u, firstTrailingBit(var_2.c.x), reverseBits(~var_2.c.x)), global0.c), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, global0.d.x, -37781i), ~vec3<i32>(var_2.a, var_2.d.x, 0i))), _wgslsmith_dot_vec2_i32(vec2<i32>(min(-1i, -1i), i32(-1i) * -1i), _wgslsmith_div_vec2_i32(max(vec2<i32>(var_2.d.x, var_2.a), var_2.d.xz), _wgslsmith_div_vec2_i32(var_2.d.wy, vec2<i32>(-19915i, 0i)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(countOneBits(var_2.d)), countOneBits(~global0.d)), ~global0.a));
    global2 = all(select(vec4<bool>(any(arg_1.wz), select(true, true, false & arg_1.x), true, !(!arg_1.x)), select(arg_1, arg_1, select(arg_1.x, true, false) & arg_1.x), !any(vec3<bool>(false, true, true))));
    return -215f;
}

fn func_2(arg_0: f32) -> bool {
    global3 = -322f;
    let var_0 = !(!(!any(vec2<bool>(true, true))));
    let var_1 = global0.b;
    var var_2 = Struct_1(-(~1i | global0.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(604f)))), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.x, 32778u, 0u, global1[_wgslsmith_index_u32(global0.c.x, 1u)]), min(vec4<u32>(24085u, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], global0.c.x), global0.c), vec4<u32>(global0.c.x, 15511u, u_input.a, global1[_wgslsmith_index_u32(global0.c.x, 1u)])), vec4<u32>((global0.c.x >> (global0.c.x % 32u)) | ~u_input.a, countOneBits(32497u), ~global0.c.x, 1u)), _wgslsmith_add_vec4_i32(select(~global0.d, abs(vec4<i32>(33909i, -4024i, 34916i, -2147483647i)), vec4<bool>(true, var_0, var_0, false)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, 0u, 0u) | vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(39887u, 1u)], global0.c.x, 15628u), vec4<u32>(0u, global0.c.x, global0.c.x, u_input.a)) % vec4<u32>(32u)), vec4<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, global0.a), vec2<i32>(606i, global0.a)), global0.a), global0.d.x, -(~global0.a))));
    var var_3 = Struct_1(0i, _wgslsmith_f_op_f32(func_3(4294967295u, select(vec4<bool>(select(true, var_0, var_0), global0.b <= 195f, var_0, any(vec3<bool>(var_0, var_0, false))), vec4<bool>(any(vec3<bool>(var_0, var_0, false)), global0.c.x <= global0.c.x, any(vec4<bool>(false, false, false, false)), all(vec3<bool>(var_0, false, var_0))), !(global0.d.x < var_2.a)))), global0.c, var_2.d);
    return true;
}

fn func_1() -> f32 {
    let var_0 = vec4<i32>(-30925i & (-789i >> (~global1[_wgslsmith_index_u32(~59149u, 1u)] % 32u)), global0.a, -firstLeadingBit(-global0.a), -select(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, global0.a, global0.d.x, 27312i), global0.d), false));
    global1 = array<u32, 1>();
    var var_1 = global0.b == global0.b;
    var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - 744f))) * 1199f));
    let var_2 = global0.d.x < var_0.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * 164f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(144f)) * _wgslsmith_f_op_f32(min(global0.b, -656f))))), global0.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.d.x;
    let var_1 = _wgslsmith_dot_vec3_i32(arg_2.d.zzw, max(~arg_2.d.yxz, vec3<i32>(11928i, -(i32(-1i) * -1i), ~arg_3.a)));
    var var_2 = Struct_1(_wgslsmith_add_i32(~select(arg_0.d.x, 0i, true), global0.a), -1162f, arg_3.c, vec4<i32>(arg_2.d.x, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(global0.d, arg_3.d) & min(2147483647i, var_1)), _wgslsmith_clamp_i32(1i, global0.a, 1i), _wgslsmith_sub_i32(~1i, -arg_2.a)));
    let var_3 = select(select(select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)] >= var_2.c.x, true), true), vec2<bool>(min(var_1, var_2.d.x) > ~var_1, !any(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), true), all(vec3<bool>(true, false, false)) & func_2(190f))), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false)), vec2<bool>(!any(vec4<bool>(true, false, false, true)), !(arg_0.a < arg_1.x)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))), false);
    var var_4 = arg_0.d ^ arg_3.d;
    return Struct_1(-2147483647i, var_2.b, max(firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(44838u, 0u, 0u, 1u), vec4<u32>(4294967295u, arg_2.c.x, arg_2.c.x, arg_3.c.x), vec4<bool>(var_3.x, false, false, true)), ~arg_2.c)), firstTrailingBit(firstTrailingBit(max(vec4<u32>(global0.c.x, 4294967295u, 0u, arg_2.c.x), vec4<u32>(arg_0.c.x, 7570u, global0.c.x, 30636u))))), -var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(global0.d.x | -1612i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), 255f)), vec4<u32>(_wgslsmith_div_u32(~1270u, u_input.a), ~_wgslsmith_sub_u32(1u, u_input.a), 56851u, global0.c.x ^ countOneBits(u_input.a)), select(select(global0.d, global0.d, true), global0.d, select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))) << (vec4<u32>(global0.c.x, u_input.a, 1u, 4294967295u) % vec4<u32>(32u))), global0.d.wwz | max(vec3<i32>(global0.a, global0.a, global0.d.x), vec3<i32>(45023i, global0.d.x, -22281i)), Struct_1(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, global0.a, -8420i, global0.a)), vec4<i32>(4790i, 1750i, global0.a, 2147483647i)), 930f, vec4<u32>(global1[_wgslsmith_index_u32(~39267u ^ ~global1[_wgslsmith_index_u32(1u, 1u)], 1u)], u_input.a, 1u, 1u), ~global0.d), Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.a, -10628i), global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-227f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(global0.c, global0.c), global0.c), global0.d));
    global1 = array<u32, 1>();
    global0 = Struct_1(-(~(-_wgslsmith_mod_i32(-16609i, var_0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(trunc(991f)))), -832f)), ~_wgslsmith_div_vec4_u32(~reverseBits(var_0.c), ~global0.c), ~var_0.d ^ -select(func_4(Struct_1(global0.a, global0.b, vec4<u32>(global0.c.x, var_0.c.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], 0u), vec4<i32>(var_0.a, 3096i, var_0.a, 0i)), vec3<i32>(0i, global0.a, 23095i), Struct_1(var_0.a, -553f, var_0.c, vec4<i32>(global0.a, 12558i, var_0.a, 0i)), Struct_1(global0.a, 346f, var_0.c, vec4<i32>(1i, var_0.a, var_0.d.x, 29481i))).d, ~vec4<i32>(-1i, global0.d.x, global0.d.x, global0.a), true));
    let var_1 = ~(~0u);
    var_0 = func_4(func_4(Struct_1(_wgslsmith_clamp_i32(-1i << (global0.c.x % 32u), var_0.a, ~global0.d.x), _wgslsmith_f_op_f32(func_3(var_1, vec4<bool>(true, true, true, true))), vec4<u32>(reverseBits(0u), countOneBits(16269u), ~10736u, var_0.c.x), ~vec4<i32>(-76905i, -45508i, global0.a, var_0.d.x)), vec3<i32>(2147483647i, i32(-1i) * -1i, global0.d.x) >> (global0.c.zxy % vec3<u32>(32u)), Struct_1(20652i, -931f, vec4<u32>(_wgslsmith_add_u32(global0.c.x, 44117u), var_0.c.x, 30211u, global1[_wgslsmith_index_u32(19569u, 1u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-54944i, 1i, 2147483647i, 12873i), vec4<i32>(var_0.a, var_0.a, 55792i, -3779i)) & -global0.d), func_4(func_4(func_4(Struct_1(-1i, 981f, global0.c, vec4<i32>(0i, global0.a, var_0.a, global0.a)), vec3<i32>(0i, 1i, var_0.d.x), Struct_1(global0.d.x, global0.b, global0.c, global0.d), Struct_1(var_0.d.x, var_0.b, vec4<u32>(var_0.c.x, u_input.a, 61906u, var_0.c.x), vec4<i32>(var_0.d.x, -13160i, -22816i, var_0.a))), -var_0.d.yyy, func_4(Struct_1(-4059i, var_0.b, vec4<u32>(global0.c.x, 0u, 6776u, global0.c.x), vec4<i32>(-17414i, 1i, var_0.a, 2147483647i)), vec3<i32>(0i, 4492i, var_0.d.x), Struct_1(76137i, -419f, vec4<u32>(1u, 13616u, 58451u, var_0.c.x), vec4<i32>(var_0.a, 42815i, var_0.d.x, 8197i)), Struct_1(global0.a, -790f, global0.c, vec4<i32>(-31327i, global0.d.x, -2206i, 10579i))), Struct_1(-2482i, global0.b, global0.c, vec4<i32>(var_0.d.x, var_0.a, var_0.d.x, -87399i))), ~(global0.d.xyz & var_0.d.yyw), func_4(func_4(Struct_1(var_0.a, global0.b, var_0.c, vec4<i32>(-34568i, global0.d.x, var_0.a, -5922i)), global0.d.wzx, Struct_1(global0.d.x, -849f, vec4<u32>(global1[_wgslsmith_index_u32(0u, 1u)], u_input.a, 0u, 1u), global0.d), Struct_1(-2147483647i, var_0.b, global0.c, vec4<i32>(-37424i, -2147483647i, var_0.a, 4001i))), global0.d.xzz ^ vec3<i32>(global0.a, global0.a, var_0.a), Struct_1(0i, 1150f, var_0.c, vec4<i32>(-7122i, 20519i, var_0.d.x, var_0.a)), func_4(Struct_1(-2147483647i, 1202f, vec4<u32>(u_input.a, 0u, global0.c.x, 913u), var_0.d), global0.d.wxw, Struct_1(-1i, 1000f, vec4<u32>(79671u, global0.c.x, 4294967295u, u_input.a), global0.d), Struct_1(2147483647i, -994f, global0.c, global0.d))), func_4(func_4(Struct_1(-1i, -115f, vec4<u32>(65417u, 1u, var_1, var_0.c.x), vec4<i32>(global0.d.x, var_0.d.x, 68918i, var_0.d.x)), vec3<i32>(global0.d.x, 28708i, global0.a), Struct_1(var_0.a, global0.b, global0.c, vec4<i32>(var_0.d.x, -2147483647i, global0.a, -2147483647i)), Struct_1(73268i, global0.b, var_0.c, global0.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, 25892i, 2147483647i), vec3<i32>(global0.d.x, var_0.a, 47855i)), Struct_1(2147483647i, -136f, global0.c, global0.d), Struct_1(global0.a, global0.b, vec4<u32>(86656u, u_input.a, global0.c.x, var_0.c.x), vec4<i32>(global0.a, var_0.a, 2147483647i, -15960i))))), max(countOneBits(~(-vec3<i32>(global0.a, global0.d.x, -33499i))), _wgslsmith_sub_vec3_i32(var_0.d.xzy, var_0.d.yyx)), func_4(Struct_1(-(-15237i | global0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b - var_0.b))), var_0.c << (_wgslsmith_add_vec4_u32(vec4<u32>(13253u, 27731u, 7233u, u_input.a), global0.c) % vec4<u32>(32u)), ~select(var_0.d, vec4<i32>(0i, var_0.d.x, 8181i, 27373i), vec4<bool>(true, true, true, false))), var_0.d.zzz, func_4(func_4(func_4(Struct_1(var_0.d.x, var_0.b, global0.c, vec4<i32>(32932i, 10542i, -10460i, -62390i)), vec3<i32>(-1i, 8552i, global0.a), Struct_1(-57938i, 338f, vec4<u32>(37232u, 1u, var_1, var_1), vec4<i32>(-53586i, var_0.a, -17242i, global0.a)), Struct_1(-26931i, global0.b, global0.c, global0.d)), var_0.d.yww, func_4(Struct_1(2147483647i, var_0.b, vec4<u32>(97899u, 4294967295u, 4294967295u, 1u), vec4<i32>(1i, 62344i, global0.d.x, var_0.d.x)), vec3<i32>(var_0.a, global0.a, 0i), Struct_1(27070i, -1042f, global0.c, vec4<i32>(global0.a, global0.d.x, 52669i, var_0.d.x)), Struct_1(-48573i, global0.b, global0.c, var_0.d)), Struct_1(var_0.a, -622f, vec4<u32>(global1[_wgslsmith_index_u32(0u, 1u)], 0u, var_0.c.x, var_0.c.x), var_0.d)), _wgslsmith_div_vec3_i32(-vec3<i32>(-36130i, global0.a, global0.a), _wgslsmith_mod_vec3_i32(var_0.d.wxw, var_0.d.ywz)), Struct_1(global0.d.x, _wgslsmith_f_op_f32(-global0.b), firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, u_input.a)), vec4<i32>(var_0.d.x, -27114i, var_0.d.x, global0.a) << (var_0.c % vec4<u32>(32u))), func_4(func_4(Struct_1(var_0.d.x, 402f, global0.c, var_0.d), global0.d.yyx, Struct_1(var_0.a, 773f, var_0.c, global0.d), Struct_1(var_0.d.x, 723f, global0.c, vec4<i32>(-2147483647i, global0.d.x, var_0.d.x, global0.d.x))), var_0.d.zyy, Struct_1(var_0.d.x, 1928f, vec4<u32>(global1[_wgslsmith_index_u32(23172u, 1u)], global1[_wgslsmith_index_u32(global0.c.x, 1u)], u_input.a, 4294967295u), var_0.d), func_4(Struct_1(var_0.a, global0.b, global0.c, vec4<i32>(global0.a, var_0.a, -14038i, 8698i)), vec3<i32>(-52484i, var_0.d.x, -1i), Struct_1(var_0.d.x, var_0.b, var_0.c, global0.d), Struct_1(var_0.d.x, var_0.b, global0.c, vec4<i32>(-2147483647i, -13652i, 1i, 4274i))))), func_4(Struct_1(abs(global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -366f), max(vec4<u32>(249u, 10958u, 26282u, var_1), var_0.c), select(var_0.d, var_0.d, false)), vec3<i32>(global0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, var_0.a), global0.d.yx), var_0.d.x), func_4(Struct_1(6549i, global0.b, vec4<u32>(4294967295u, 40080u, global1[_wgslsmith_index_u32(var_0.c.x, 1u)], global0.c.x), global0.d), global0.d.wzy | var_0.d.xzy, func_4(Struct_1(-1i, 1297f, global0.c, vec4<i32>(var_0.d.x, -2147483647i, 2147483647i, -1i)), global0.d.xwy, Struct_1(2147483647i, 824f, var_0.c, vec4<i32>(global0.a, var_0.a, global0.d.x, var_0.d.x)), Struct_1(0i, var_0.b, var_0.c, vec4<i32>(var_0.a, var_0.a, global0.a, var_0.a))), Struct_1(29387i, var_0.b, var_0.c, global0.d)), func_4(Struct_1(global0.d.x, var_0.b, vec4<u32>(45138u, u_input.a, global0.c.x, u_input.a), vec4<i32>(var_0.a, var_0.a, var_0.d.x, -24845i)), _wgslsmith_div_vec3_i32(global0.d.yyw, global0.d.wyy), func_4(Struct_1(global0.d.x, -1756f, vec4<u32>(1u, u_input.a, u_input.a, 1u), global0.d), vec3<i32>(35922i, 2483i, 64221i), Struct_1(1i, var_0.b, var_0.c, var_0.d), Struct_1(43685i, global0.b, vec4<u32>(u_input.a, var_0.c.x, 0u, 20160u), var_0.d)), Struct_1(var_0.d.x, var_0.b, var_0.c, global0.d)))), Struct_1(global0.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(140f, 790f) - _wgslsmith_f_op_f32(global0.b + 1000f)), var_0.b)), _wgslsmith_clamp_vec4_u32(var_0.c, select(global0.c, abs(var_0.c), true), ~global0.c), vec4<i32>(global0.a, -25365i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.d.x, var_0.d.x), var_0.d.x << (1u % 32u), -75577i), var_0.d.x)));
    var var_2 = global0.b;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -2171f) + -117f))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.zzz, vec2<i32>(min(0i, 0i), ~4630i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-530f, var_0.b, -1000f, global0.b), vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, global0.b, -1549f, global0.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, 1000f), vec2<f32>(var_0.b, 1000f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 692f) - vec2<f32>(global0.b, global0.b))))));
}

