struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: u32 = 16954u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(global1.x, Struct_1(max(max(vec2<i32>(18488i, global0[_wgslsmith_index_u32(0u, 22u)]), vec2<i32>(u_input.c.x, u_input.c.x)) & max(u_input.c, vec2<i32>(25055i, global0[_wgslsmith_index_u32(0u, 22u)])), -_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 8979i), u_input.c))), Struct_1(u_input.c), vec2<u32>(select(1u, select(abs(global1.x), min(u_input.b.x, 0u), true), true && any(vec2<bool>(false, true))), 0u));
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 22u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 680f, -615f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, 188f, -417f, 201f)))))));
    global1 = vec2<u32>(global1.x, 45315u);
    global0 = array<i32, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1262f * var_2.x));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_3(Struct_1(select(firstTrailingBit(vec2<i32>(23463i, -1i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, -38634i), arg_2.b.a), !select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(true, true)))), ~_wgslsmith_clamp_vec2_i32(arg_2.b.a, vec2<i32>(-2147483647i, arg_2.c.a.x) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), min(vec2<i32>(2147483647i, arg_2.b.a.x), arg_2.b.a)), arg_2.b, countOneBits(vec2<i32>(-21413i, ~0i)));
    global1 = _wgslsmith_div_vec2_u32(arg_2.d, min(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 28161u), firstTrailingBit(arg_2.d), vec2<u32>(1u, global1.x)), vec2<u32>(abs(4294967295u), firstTrailingBit(global1.x) | countOneBits(arg_2.a))));
    var var_1 = arg_2;
    var var_2 = arg_2.c;
    var var_3 = ~min(-(~global0[_wgslsmith_index_u32(1u, 22u)]), max(~var_1.c.a.x, _wgslsmith_mult_i32(var_2.a.x, var_2.a.x)) >> (~global1.x % 32u));
    return abs(1u << (_wgslsmith_mod_u32(~1u, ~global1.x << (_wgslsmith_mod_u32(19361u, 10960u) % 32u)) % 32u));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    global2 = func_4(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -284f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 953f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1751f, 1921f))))), Struct_4(u_input.a, Struct_1(vec2<i32>(~u_input.c.x, global0[_wgslsmith_index_u32(1u, 22u)])), Struct_1(u_input.c), u_input.b.zy), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -442f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-580f, 792f)))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(737f - 235f) + _wgslsmith_f_op_f32(-1545f - 365f)), _wgslsmith_div_f32(927f, 969f))));
    global0 = array<i32, 22>();
    global1 = abs(max(u_input.b.zz, vec2<u32>(global1.x, select(0u, 4294967295u, false) & global1.x)));
    global1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zw, u_input.b.xw), u_input.b.xx) >> ((vec2<u32>(countOneBits(select(global1.x, 0u, false)), u_input.b.x << (16323u % 32u)) & ~u_input.b.zy) % vec2<u32>(32u));
    let var_0 = u_input.c.x;
    return ~vec2<i32>(-(63623i & var_0), firstLeadingBit(u_input.c.x ^ 0i) & ~var_0);
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 22>();
    var var_0 = _wgslsmith_mod_u32(~min(~u_input.b.x ^ _wgslsmith_div_u32(u_input.a, 7284u), u_input.b.x), ~global1.x);
    let var_1 = Struct_3(Struct_1(-u_input.c), u_input.c, Struct_1(-u_input.c), func_2(true));
    global1 = vec2<u32>(~8386u, u_input.a) | ~_wgslsmith_add_vec2_u32(min(u_input.b.yw, ~u_input.b.zz), u_input.b.zx << (vec2<u32>(global1.x, u_input.b.x) % vec2<u32>(32u)));
    let var_2 = var_1;
    return Struct_1(u_input.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    global0 = array<i32, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1839f));
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_mult_vec2_i32(u_input.c, u_input.c)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 5023i), ~vec2<i32>(arg_1.a.x, 2147483647i)))), _wgslsmith_mod_vec4_i32(reverseBits(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(20498u, 22u)], 1i, -41702i, 8922i), vec4<i32>(global0[_wgslsmith_index_u32(8902u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 18034i, arg_1.a.x)))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_1.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 3301i, arg_1.a.x)) & -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.x, 22u)], 2147483647i, 1i), vec4<i32>(18279i, u_input.c.x, ~2147483647i, -1i))), !vec3<bool>(all(vec4<bool>(true, true, arg_2.x, true)), firstTrailingBit(15628i) != arg_0.a.x, true));
    var var_2 = abs(1u);
    global0 = array<i32, 22>();
    return ~40211u;
}

fn func_6(arg_0: Struct_4) -> vec2<u32> {
    global2 = abs(1u);
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-666f))));
    return countOneBits(_wgslsmith_mult_vec2_u32(u_input.b.yx, firstTrailingBit(vec2<u32>(4294967295u, u_input.b.x)))) ^ _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(~arg_0.d, vec2<u32>(1u, 22915u)), u_input.b.zy, ~(~firstTrailingBit(arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2125f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(879f)), _wgslsmith_div_f32(1000f, -694f)))))) + 844f);
    let var_1 = !vec3<bool>(false, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)), true);
    global1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 64994u), u_input.b.ww), ~u_input.b.wz), vec2<u32>(_wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), u_input.b.yw)), global1.x));
    global1 = func_6(Struct_4(~(~_wgslsmith_add_u32(u_input.a, 1u)), Struct_1(abs(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 0i), vec2<i32>(u_input.c.x, u_input.c.x)))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -11801i), vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 22u)], 9328i))), vec2<u32>(~47981u, func_5(Struct_1(u_input.c), func_1(), !vec3<bool>(false, var_1.x, var_1.x), select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, true), false)))));
    global2 = global1.x;
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, u_input.c ^ u_input.c), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 22u)], u_input.c.x), ~countOneBits(u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<i32>(~global0[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], var_2.a.x, -1i), 0i, -var_2.a.x), max(firstLeadingBit(~vec4<i32>(44149i, var_2.a.x, -6592i, var_2.a.x)), vec4<i32>(-1i) * -vec4<i32>(114079i, -15839i, global0[_wgslsmith_index_u32(global1.x, 22u)], var_2.a.x)), all(var_1) | true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2578f, var_0, var_0) + vec3<f32>(var_0, 488f, var_0)) + vec3<f32>(-1082f, var_0, var_0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0, 1650f), vec3<f32>(995f, -2220f, -1788f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(-529f, var_0, var_0))))))), firstLeadingBit(vec3<u32>(min(1u, 66568u), 4294967295u & global1.x, 1u) ^ countOneBits(min(vec3<u32>(global1.x, global1.x, 4294967295u), vec3<u32>(51544u, 50171u, 0u)))), u_input.b.wzy >> ((min(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, global1.x)) ^ _wgslsmith_add_vec3_u32(u_input.b.yyy, _wgslsmith_mod_vec3_u32(u_input.b.zxz, u_input.b.wzz))) % vec3<u32>(32u)));
}

