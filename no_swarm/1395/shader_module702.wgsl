struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_5 = Struct_5(Struct_4(-15790i, i32(-2147483648), 354f), vec4<u32>(49598u, 12092u, 65124u, 34878u));

var<private> global2: array<vec4<u32>, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_5(Struct_4(global1.a.a, min(countOneBits(2341i), -u_input.a.x), global0.a.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.x | global1.b.x, 15108u), arg_0.x), 1u)] << (~_wgslsmith_div_vec4_u32(max(global2[_wgslsmith_index_u32(28536u, 1u)], vec4<u32>(global1.b.x, 3886u, 9345u, 41035u)), global2[_wgslsmith_index_u32(63192u, 1u)]) % vec4<u32>(32u)));
    global1 = Struct_5(Struct_4(0i, firstLeadingBit(abs(~global1.a.b)), 1253f), var_0.b);
    let var_1 = all(vec2<bool>(false, true));
    var var_2 = ~vec2<i32>(~(~17553i), var_0.a.a);
    var var_3 = Struct_1(any(select(select(vec3<bool>(var_1, var_1, false), select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, var_1)), !var_1), vec3<bool>(all(vec4<bool>(var_1, false, var_1, var_1)), all(vec2<bool>(var_1, var_1)), var_1), var_1)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~48209u, var_0.b.x), select(firstLeadingBit(global1.b.ww), ~global1.b.zy, !vec2<bool>(var_1, false))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.b.x, var_0.b.x), vec2<u32>(global1.b.x, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, var_0.b.x), vec2<u32>(1u, global1.b.x)) << (max(vec2<u32>(var_0.b.x, var_0.b.x), arg_0) % vec2<u32>(32u)), vec2<u32>(arg_0.x, ~arg_0.x))), !vec2<bool>(all(select(vec3<bool>(false, var_1, false), vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, false))), false), max(~global1.b.xxy, firstLeadingBit(min(vec3<u32>(51988u, var_0.b.x, 38297u), vec3<u32>(49145u, 104695u, var_0.b.x) >> (vec3<u32>(4783u, 4294967295u, 22427u) % vec3<u32>(32u))))), select(vec4<bool>(var_1, var_1, var_1, 861f != var_0.a.c), select(!vec4<bool>(true, var_1, true, false), !vec4<bool>(var_1, var_1, var_1, var_1), !var_1), var_1));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.c, -365f, var_3.a)), _wgslsmith_f_op_f32(min(global1.a.c, 578f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_4(max(u_input.a.x, _wgslsmith_sub_i32(-1i, 0i)) & max(_wgslsmith_mult_i32(1i, ~global1.a.a), ~(u_input.a.x & 1i)), u_input.a.x, 277f);
    let var_1 = Struct_2(global1.b & ((global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global1.b.x), 1u)] | ~vec4<u32>(0u, global1.b.x, global1.b.x, global1.b.x)) << (abs(global1.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~(global1.b.ww ^ vec2<u32>(global1.b.x, global1.b.x)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c) + _wgslsmith_f_op_f32(-global0.a.x)), global1.b.x, !select(select(vec2<bool>(arg_0.x, false), vec2<bool>(false, true), arg_0.x), arg_0.yw, arg_0.x), global1.b.xwy, !vec4<bool>(all(arg_0), any(arg_1), true, !arg_3)), Struct_1((any(vec2<bool>(false, true)) && (arg_3 && true)) && true, ~10894u, !select(arg_1, !arg_1, !arg_1), ~abs(global1.b.zyw), vec4<bool>(!arg_1.x, arg_3, arg_0.x, true)));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), var_0.c)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-global0.a);
    var var_3 = arg_0;
    return var_1.c;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    global0 = Struct_3(vec2<f32>(arg_1.b, global0.a.x));
    global1 = Struct_5(global1.a, vec4<u32>(countOneBits(firstTrailingBit(arg_1.a.x) >> (global1.b.x % 32u)), 0u, _wgslsmith_div_u32(~_wgslsmith_div_u32(1u, global1.b.x), arg_1.c.d.x), max(select(~global1.b.x, _wgslsmith_clamp_u32(0u, arg_1.d.d.x, global1.b.x), !arg_1.d.a), 4294967295u)));
    var var_0 = !all(vec2<bool>((arg_1.d.d.x | 0u) >= 3742u, true));
    let var_1 = arg_1;
    var var_2 = 28616i;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, -961f) + vec2<f32>(global0.a.x, arg_2.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_2.x) + vec2<f32>(arg_0.c, arg_2.x))))));
}

fn func_5(arg_0: Struct_3) -> Struct_5 {
    var var_0 = arg_0;
    return Struct_5(Struct_4(max(_wgslsmith_mod_i32(2147483647i, global1.a.b) ^ global1.a.a, -2147483647i), -_wgslsmith_sub_i32(max(global1.a.b, global1.a.a), ~u_input.a.x), arg_0.a.x), ~min(~global1.b, _wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(global1.b.x, 1u)], vec4<u32>(0u, global1.b.x, 4294967295u, global1.b.x))) << (vec4<u32>(global1.b.x, ~1u, reverseBits(~global1.b.x), global1.b.x) % vec4<u32>(32u)));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_5(func_4(global1.a, Struct_2(global1.b, 550f, func_2(vec4<bool>(true, true, true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c, -118f, global1.a.c)), false), func_2(vec4<bool>(true, true, true, true), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(311f, global1.a.c, -1484f), vec3<f32>(global1.a.c, global1.a.c, global0.a.x), vec3<bool>(false, true, false))), true)), vec4<f32>(-1709f, _wgslsmith_div_f32(-2022f, _wgslsmith_f_op_f32(sign(global0.a.x))), -550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c * global0.a.x)))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.b.zxw, _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, var_0.b.x)), firstTrailingBit(global1.b.xyy)), ~(vec3<u32>(global1.b.x, var_0.b.x, var_0.b.x) | vec3<u32>(61436u, var_0.b.x, global1.b.x))), vec3<u32>(1u, ~global1.b.x, _wgslsmith_mod_u32(19636u, 9350u)) >> ((firstTrailingBit(vec3<u32>(var_0.b.x, 4294967295u, 79744u)) & firstLeadingBit(vec3<u32>(global1.b.x, global1.b.x, 52927u))) % vec3<u32>(32u))), var_0.b.x);
    var var_2 = vec3<i32>(u_input.a.x, 32363i, abs(u_input.a.x));
    var var_3 = vec3<u32>(var_0.b.x, max(~(~var_0.b.x >> ((37185u ^ var_0.b.x) % 32u)), ~global1.b.x), 4294967295u);
    var var_4 = vec4<bool>(any(vec2<bool>(select(true, any(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, true))), !select(false, true, true))), !any(vec4<bool>(true, true, true, true)), (var_3.x >= _wgslsmith_sub_u32(~24178u, ~var_3.x)) && true, any(func_2(select(func_2(vec4<bool>(false, true, true, false), vec2<bool>(false, false), vec3<f32>(-774f, global0.a.x, global0.a.x), true).e, vec4<bool>(false, true, false, false), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec3<f32>(_wgslsmith_f_op_f32(sign(286f)), -425f, _wgslsmith_f_op_f32(global1.a.c + global1.a.c)), true).e));
    return ~(~vec4<u32>(var_3.x, min(_wgslsmith_sub_u32(36600u, 0u), 1u), 0u, var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = abs(~_wgslsmith_dot_vec2_u32(global1.b.xy, vec2<u32>(_wgslsmith_clamp_u32(global1.b.x, global1.b.x, 0u), reverseBits(global1.b.x))));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(max(~global1.b.x, firstLeadingBit(20816u)), reverseBits(global1.b.x | 24680u), _wgslsmith_clamp_u32(global1.b.x, 1u, 1u) & 17611u, ~global1.b.x)), global0.a.x, Struct_1(func_2(func_2(vec4<bool>(false, true, false, false), vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global1.a.c, global0.a.x) * vec3<f32>(global1.a.c, 238f, global1.a.c)), true).e, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-821f, global1.a.c, -859f)))), true).e.x, ~(~(6090u >> (global1.b.x % 32u))), vec2<bool>(true, true), ~(global1.b.xww ^ (vec3<u32>(global1.b.x, global1.b.x, global1.b.x) >> (vec3<u32>(29211u, global1.b.x, 67413u) % vec3<u32>(32u)))), !select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), Struct_1(u_input.a.x > abs(~global1.a.a), firstTrailingBit(global1.b.x), func_2(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), func_2(vec4<bool>(false, false, true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1004f, -989f) * vec3<f32>(877f, 1498f, global0.a.x)), true).e.yy, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.c, 1282f, global1.a.c), vec3<f32>(533f, -3413f, global1.a.c))))), true).c, ~(~vec3<u32>(global1.b.x, 773u, 0u)), vec4<bool>(57605u <= firstTrailingBit(global1.b.x), false, all(vec2<bool>(true, true)) | false, all(vec2<bool>(false, false)))));
    var_0 = ~countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(min(abs(abs(vec3<i32>(5371i, -2147483647i, u_input.a.x))), abs(~vec3<i32>(191i, u_input.a.x, global1.a.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1.a.b, 7831i, 33762i), max(select(vec3<i32>(u_input.a.x, 0i, global1.a.b), vec3<i32>(47976i, u_input.a.x, u_input.a.x), vec3<bool>(var_1.d.a, false, true)), vec3<i32>(u_input.a.x, u_input.a.x, global1.a.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b * 126f), _wgslsmith_f_op_f32(abs(var_1.b)), false)), global1.a.c, _wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + 924f) * _wgslsmith_f_op_f32(trunc(-2389f))))), _wgslsmith_mod_vec2_u32((vec2<u32>(var_1.d.b, var_1.d.b) ^ func_1().wz) & (vec2<u32>(54418u, 1u) << (_wgslsmith_div_vec2_u32(global1.b.zx, vec2<u32>(53898u, var_1.d.d.x)) % vec2<u32>(32u))), ~(vec2<u32>(0u, var_1.a.x) >> (select(global1.b.zz, vec2<u32>(21135u, 22114u), vec2<bool>(var_1.d.e.x, false)) % vec2<u32>(32u)))), global1.a.b);
}

