struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool;

var<private> global2: vec3<i32> = vec3<i32>(0i, -7778i, 18302i);

var<private> global3: Struct_2 = Struct_2(0u, vec4<u32>(4294967295u, 4294967295u, 36801u, 4294967295u), 551f, i32(-2147483648));

var<private> global4: array<f32, 19> = array<f32, 19>(1000f, 1006f, -1787f, 402f, -2032f, -472f, -1128f, 397f, 217f, 1000f, -344f, -1687f, -2184f, -1234f, 693f, 282f, 135f, -580f, -1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(0u, 19u)]))), arg_0.x))));
    global0 = vec2<bool>(!global0.x || global0.x, select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -937f)) != arg_0.x, global0.x));
    let var_2 = min(vec3<u32>(max(1u, 106773u), u_input.b.x, 1u), ~(~vec3<u32>(global3.a, global3.a, 1u)) >> ((vec3<u32>(u_input.d, 49244u, global3.a) << (global3.b.xwx % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<u32>(1u, countOneBits(u_input.d), u_input.d);
    var var_3 = i32(-1i) * -(-global2.x >> (~countOneBits(0u) % 32u));
    return vec2<u32>(global3.b.x, _wgslsmith_dot_vec4_u32(global3.b, global3.b));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = select(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.b.wx, arg_1.b.zx) >> ((global3.b.zx ^ arg_1.b.xx) % vec2<u32>(32u)), ~(~vec2<u32>(1u, 4294967295u))), select(firstLeadingBit(global3.b.wz ^ func_3(vec2<f32>(-1000f, -283f))), arg_1.b.wx, false), !(!select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xy, all(arg_0.xw))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * 157f)))));
    let var_2 = !vec4<bool>(global0.x & arg_0.x, any(vec4<bool>(all(arg_0.wy), arg_0.x, global0.x, false)), all(select(!vec4<bool>(true, false, true, global0.x), vec4<bool>(true, global0.x, arg_0.x, false), arg_0)), true);
    let var_3 = Struct_2(var_0.x, _wgslsmith_div_vec4_u32(vec4<u32>(~var_0.x, ~(~arg_1.b.x), ~(arg_1.a | arg_1.a), 4294967295u), (~vec4<u32>(0u, var_0.x, 0u, 36244u) | firstTrailingBit(vec4<u32>(u_input.b.x, arg_1.b.x, 7859u, global3.a))) >> ((~global3.b ^ arg_1.b) % vec4<u32>(32u))), arg_1.c, global3.d);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(floor(var_3.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) - 404f);
    return Struct_2(~(arg_1.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, global3.b.x, var_0.x), arg_1.b.yyx << (global3.b.xzx % vec3<u32>(32u)))), ~abs(~select(arg_1.b, global3.b, var_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.c, var_3.c)) - -1000f)))), ~34616i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    global3 = func_2(!(!select(!vec4<bool>(arg_0.e, arg_0.c, global0.x, false), !vec4<bool>(global0.x, arg_0.c, true, true), all(vec2<bool>(global0.x, false)))), Struct_2(arg_1.b.x, countOneBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3, 26588u, global3.a, 6178u), global3.b))), 570f, -3097i), arg_1.c);
    var var_0 = _wgslsmith_mod_vec4_i32(-firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, 38354i, u_input.a.x, global3.d), vec4<i32>(-1i, arg_1.d, -76665i, arg_2.x))) >> (~vec4<u32>(_wgslsmith_div_u32(arg_3, 1u), 1u, ~4294967295u, _wgslsmith_dot_vec4_u32(arg_1.b, global3.b)) % vec4<u32>(32u)), -vec4<i32>(min(i32(-1i) * -2147483647i, ~(-4169i)), global2.x, ~_wgslsmith_mult_i32(global2.x, -85466i), 28249i));
    global3 = Struct_2(_wgslsmith_dot_vec2_u32(arg_1.b.yw, func_3(arg_0.b.xy)), abs(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, 30631u, arg_1.b.x, global3.a)), firstLeadingBit(~vec4<u32>(10132u, 65889u, global3.a, global3.a)))), -791f, firstTrailingBit(arg_2.x));
    global3 = Struct_2(func_2(select(vec4<bool>(true, all(vec2<bool>(global0.x, arg_0.e)), true, true), vec4<bool>(true, arg_0.e, any(vec4<bool>(false, false, global0.x, false)), global0.x), select(!global0.x, true, all(vec4<bool>(false, false, global0.x, global0.x)))), func_2(!(!vec4<bool>(true, false, global0.x, arg_0.e)), func_2(!vec4<bool>(global0.x, true, false, false), arg_1, global3.c), _wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(round(arg_0.b.x)))), arg_1.c).b.x, ~(select(vec4<u32>(4294967295u, global3.a, 4294967295u, arg_1.b.x), select(arg_1.b, global3.b, arg_0.c), false) << (~arg_1.b % vec4<u32>(32u))), arg_0.b.x, -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 24292i), abs(vec2<i32>(0i, global2.x)), vec2<i32>(-16723i, -1i)), vec2<i32>(arg_2.x, _wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(-13234i, global2.x)))));
    let var_1 = reverseBits(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-23479i, global2.x, 1i, _wgslsmith_div_i32(arg_1.d, 1i)), vec4<i32>(30200i, -global2.x, global2.x, max(arg_2.x, 1i)))));
    return Struct_1(vec2<i32>(-1i) * -var_0.zz, arg_0.b, global0.x, _wgslsmith_f_op_f32(min(-766f, _wgslsmith_f_op_f32(max(arg_1.c, 1222f)))), global0.x);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = vec3<i32>(global2.x, global2.x, _wgslsmith_sub_i32(global2.x, -_wgslsmith_mod_i32(reverseBits(29945i), global2.x)));
    var var_1 = true;
    var var_2 = Struct_2(u_input.b.x, (vec4<u32>(global3.a, global3.a, ~38236u, 0u) >> (vec4<u32>(u_input.b.x & u_input.d, 0u, _wgslsmith_div_u32(global3.a, 34183u), ~78489u) % vec4<u32>(32u))) ^ global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146f * -120f) + -110f) * global4[_wgslsmith_index_u32(global3.a, 19u)]), _wgslsmith_mod_i32(abs(firstTrailingBit(global3.d)), 24880i));
    global4 = array<f32, 19>();
    var var_3 = func_2(!select(vec4<bool>(true, !arg_0.c, select(false, global0.x, global0.x), true), !select(vec4<bool>(global0.x, arg_0.c, arg_0.e, arg_0.e), vec4<bool>(global0.x, false, true, arg_0.e), global0.x), false), func_2(select(vec4<bool>(false, any(vec3<bool>(arg_0.e, global0.x, false)), arg_0.e, false), select(!vec4<bool>(arg_0.c, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, false, false, arg_0.e), vec4<bool>(false, true, true, false), vec4<bool>(arg_0.e, true, false, true)), false), select(!vec4<bool>(global0.x, arg_0.c, arg_0.e, false), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(true, true, false, true), vec4<bool>(true, arg_0.e, false, global0.x)), all(vec4<bool>(global0.x, false, false, global0.x)))), Struct_2(_wgslsmith_add_u32(1216u, var_2.a), ~global3.b, global3.c, global3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + global4[_wgslsmith_index_u32(50342u, 19u)]) - _wgslsmith_f_op_f32(-arg_0.b.x)))), arg_0.b.x);
    return !(!(!select(select(vec2<bool>(arg_0.c, arg_0.e), vec2<bool>(global0.x, global0.x), false), vec2<bool>(global0.x, true), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -35864i;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(vec3<u32>(global3.a, u_input.d, u_input.b.x))), _wgslsmith_mult_vec3_u32(countOneBits(global3.b.wzz), global3.b.wwy)), 49930u);
    global0 = vec2<bool>(true, -170f >= global4[_wgslsmith_index_u32(~u_input.b.x, 19u)]);
    global0 = !select(vec2<bool>(!global0.x, false), !vec2<bool>(global0.x, true), false);
    let var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(~global3.b.xy << (u_input.b % vec2<u32>(32u)), global3.b.zy), ~(vec4<u32>(_wgslsmith_add_u32(23546u, var_1), ~3295u, ~79643u, 24494u) & global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.x);
    global0 = select(func_4(func_1(Struct_1(max(u_input.a, global2.xx), vec3<f32>(global4[_wgslsmith_index_u32(global3.b.x, 19u)], 654f, -918f), true, -1000f, !global0.x), Struct_2(4294967295u, _wgslsmith_sub_vec4_u32(global3.b, global3.b), global4[_wgslsmith_index_u32(min(4294967295u, var_2.b.x), 19u)], -var_2.d), max(global2.zx, vec2<i32>(global2.x, -6189i)), 1u)), select(vec2<bool>(global0.x & any(vec4<bool>(global0.x, global0.x, false, global0.x)), any(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), func_4(Struct_1(~vec2<i32>(global3.d, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-101f, 767f, 929f) + vec3<f32>(var_2.c, 1446f, global3.c)), global0.x, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 19u)] * -112f), false)), vec2<bool>(global0.x, all(vec4<bool>(true, false, true, global0.x)))), vec2<bool>(func_4(func_1(Struct_1(u_input.a, vec3<f32>(332f, -345f, -920f), global0.x, global3.c, global0.x), Struct_2(var_2.a, vec4<u32>(0u, var_2.b.x, global3.b.x, var_2.a), 109f, 2147483647i), ~u_input.a, global3.a)).x, any(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    global2 = firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-(i32(-1i) * -44220i), var_0), var_0, var_0));
    let var_3 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(global2.x, global3.d), ~_wgslsmith_mod_i32(1i, global3.d)) | max(firstLeadingBit(global3.d), select(-1i, -global2.x, all(vec4<bool>(false, global0.x, global0.x, false)))), 4294967295u, ~abs(vec3<i32>(u_input.e, _wgslsmith_mult_i32(global2.x, var_0), 11636i)));
}

