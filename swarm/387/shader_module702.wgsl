struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(43571i, 2147483647i);

var<private> global1: array<Struct_2, 5>;

var<private> global2: f32 = 1000f;

var<private> global3: array<i32, 15>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(779f - -917f), _wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(ceil(-604f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) * _wgslsmith_f_op_f32(ceil(1571f)))), 479f), -2147483647i, ~(~(min(vec3<u32>(18448u, u_input.d.x, u_input.e), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) & ~vec3<u32>(1u, 4294967295u, u_input.c))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, any(vec3<bool>(false, true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), vec4<bool>(select(any(vec2<bool>(true, true)), false, any(vec3<bool>(false, true, false))), true, true, true), true), -(~_wgslsmith_clamp_i32(u_input.b, select(arg_0.x, 10357i, false), ~global3[_wgslsmith_index_u32(u_input.e, 15u)])));
    let var_1 = vec3<u32>(~firstTrailingBit(_wgslsmith_add_u32(1u, u_input.d.x | var_0.c.x)), ~countOneBits(~(~50193u)), var_0.c.x & u_input.e);
    var var_2 = var_0.d.x;
    global1 = array<Struct_2, 5>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), vec3<f32>(_wgslsmith_div_f32(var_0.a.x, -388f), 278f, var_0.a.x), !var_0.d.zww))), -10135i, vec3<u32>(min(countOneBits(u_input.c) << (var_0.c.x % 32u), 0u), firstLeadingBit(_wgslsmith_dot_vec2_u32(max(var_0.c.xz, vec2<u32>(0u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(5895u, 0u), vec2<u32>(var_0.c.x, 9023u)))), _wgslsmith_sub_u32(44341u, ~(4137u & var_1.x))), var_0.d, abs(-u_input.a.x));
    return false;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    global0 = vec2<i32>(max(u_input.a.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, 10353u), 15u)]), select(countOneBits(global3[_wgslsmith_index_u32(reverseBits(firstTrailingBit(47639u)), 15u)]), global3[_wgslsmith_index_u32(~(~1u), 15u)], all(vec2<bool>(func_3(u_input.a.zxx), true))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-649f - 1097f))))));
    let var_0 = global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_0, _wgslsmith_mult_u32(arg_1, arg_1)))), 5u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(272f - 1233f), -590f, -630f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(411f, 925f, -1040f)))), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-1i, i32(-1i) * -2147483647i, _wgslsmith_div_i32(u_input.b, -43702i)), 0i), abs(select(var_0.b | vec3<u32>(20797u, 1u, u_input.e), ~_wgslsmith_sub_vec3_u32(var_0.b, var_0.b), select(select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false)), vec3<bool>(false, var_0.a.x, var_0.a.x), select(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(var_0.a.x, false, true))))), !vec4<bool>(all(select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(true, true, false), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), any(select(var_0.a, vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x))), true, true), ~firstLeadingBit(~(-2147483647i)));
    var var_2 = !var_1.d;
    return abs(-12906i);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> vec3<i32> {
    var var_0 = abs(vec4<i32>(_wgslsmith_mod_i32(arg_1, -arg_1), abs(firstTrailingBit(0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, arg_1, arg_1), ~vec3<i32>(-25527i, global0.x, arg_1)) | global3[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_div_i32(func_2(22425u, 0u, u_input.a), -u_input.a.x)));
    let var_1 = true;
    var var_2 = _wgslsmith_div_f32(-309f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f - 301f))))));
    var var_3 = _wgslsmith_dot_vec2_u32(~abs(min(~vec2<u32>(27384u, u_input.c), u_input.d)), vec2<u32>(1u, 4409u));
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(select(1260f, -481f, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-322f, -1000f)), -531f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1895f))), 1122f)))));
    return abs(vec3<i32>(-global3[_wgslsmith_index_u32(countOneBits(u_input.d.x), 15u)] | 2147483647i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(global3[_wgslsmith_index_u32(u_input.e, 15u)], u_input.b, global3[_wgslsmith_index_u32(1u, 15u)], arg_1) >> (vec4<u32>(4294967295u, 63749u, u_input.d.x, 18224u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(u_input.a | vec4<i32>(u_input.a.x, -19567i, 4362i, arg_1), vec4<i32>(0i, 48855i, global3[_wgslsmith_index_u32(1u, 15u)], 24953i) ^ u_input.a))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(~4832u), ~_wgslsmith_sub_u32(42246u, 1u), u_input.c, u_input.e), ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(56274u, 1u, 118u, u_input.e), vec4<u32>(1u, u_input.e, 12580u, 4294967295u)), ~vec4<u32>(63730u, 20251u, 106191u, 805u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(457f, -801f, 101f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-391f, -1542f, 1024f), vec3<f32>(-889f, 158f, 983f)))))) + vec3<f32>(566f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1856f - 774f) + 1000f), 643f)), -20278i, var_0.wzy, select(select(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), false), vec4<bool>(global0.x <= global3[_wgslsmith_index_u32(var_0.x, 15u)], arg_1.x, true, false), true), !vec4<bool>(arg_1.x, true, true, true), vec4<bool>(true, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), all(!vec4<bool>(false, arg_1.x, arg_1.x, false)), true)), _wgslsmith_add_i32(global0.x, ~u_input.b ^ select(0i, -2147483647i, true)) << (~151u % 32u));
    var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_1.c.x, 15371u), var_1.c), firstLeadingBit(u_input.e)), _wgslsmith_mult_u32(u_input.e, 44208u) >> (1u % 32u)), firstLeadingBit(0u), 39502u, 1u));
    let var_2 = false;
    let var_3 = vec4<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(var_0.x, u_input.c), vec2<u32>(0u, var_1.c.x)), ~_wgslsmith_mod_vec2_u32(var_1.c.xx, var_0.wx))), reverseBits(50660u), 18018u);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), 539f)), 235f, var_1.a.x), _wgslsmith_div_i32(2147483647i, ~u_input.b), _wgslsmith_mod_vec3_u32(countOneBits(var_3.ywy), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_3.x, 1u, var_1.c.x) & ~var_0.wzy, abs(firstTrailingBit(vec3<u32>(32353u, var_3.x, 9142u))), _wgslsmith_mod_vec3_u32(var_0.wyw, vec3<u32>(33568u, var_0.x, var_1.c.x)) >> ((var_0.wyw >> (var_3.yxz % vec3<u32>(32u))) % vec3<u32>(32u)))), var_1.d, ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(min(global0.x & firstTrailingBit(1i), min(~(~u_input.b), -(u_input.a.x & global0.x))), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), select(vec3<bool>(true, true, any(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, 24894u >= u_input.d.x, true)), true), u_input.a.ww, ~_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -7140i, global0.x, ~global0.x), func_1(vec3<bool>(false, true, false), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.b), u_input.a.zz))));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(22187u, u_input.d.x, 16053u, var_0.c.x)), vec4<u32>(_wgslsmith_sub_u32(46303u, u_input.c), 0u, var_0.c.x << (0u % 32u), u_input.e)), ~vec4<u32>(~16137u, var_0.c.x, countOneBits(0u), select(u_input.e, var_0.c.x, var_0.d.x))), select(vec4<u32>(var_0.c.x, max(~4294967295u, 4294967295u), var_0.c.x, _wgslsmith_add_u32(var_0.c.x, select(6583u, u_input.e, var_0.d.x))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 30u, u_input.c, 8511u), ~vec4<u32>(10705u, 64873u, 12258u, 10598u))), var_0.d.x));
    let var_3 = select(select(!var_0.d, vec4<bool>(all(!var_0.d.yw), true, -u_input.a.x >= var_0.e, true), select(select(var_0.d, !var_0.d, select(var_0.d, vec4<bool>(false, false, true, false), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), var_0.d, true)), select(var_0.d, select(func_4(i32(-1i) * -94118i, var_0.d.yww, u_input.a.yx ^ u_input.a.wz, min(u_input.a.wxx, u_input.a.wwz)).d, vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), select(var_0.d.x, true, false | var_0.d.x)), var_0.d), var_0.d.x);
    var var_4 = Struct_2(!vec2<bool>(false, !(!var_0.d.x)), vec3<u32>(~u_input.d.x, _wgslsmith_add_u32(~(~18632u), var_0.c.x), _wgslsmith_div_u32(55213u, _wgslsmith_sub_u32(max(var_2.x, 45731u), 41954u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(round(-2559f)));
}

