struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(31026u, 1u, 36533u, 4294967295u, 25507u, 69965u, 38414u, 55254u, 109448u, 46115u, 4294967295u, 34260u, 1u, 116988u, 0u, 91904u, 0u, 14798u, 33720u, 30317u, 21055u, 16682u, 55663u, 0u, 20118u, 43610u, 57881u, 1u, 70216u, 1u, 0u, 38241u);

var<private> global1: vec4<f32> = vec4<f32>(102f, 120f, 1000f, 1000f);

var<private> global2: Struct_1 = Struct_1(912u, vec2<u32>(47600u, 83037u));

var<private> global3: array<Struct_3, 23>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = Struct_2(select(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, var_0, true)), var_0 && select(select(false, var_0, var_0), var_0 || var_0, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(786f)), _wgslsmith_f_op_f32(-global1.x)), global1.yz)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.yy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.yz)) - _wgslsmith_div_vec2_f32(global1.zw, vec2<f32>(global1.x, global1.x))))), Struct_1(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_add_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), global0[_wgslsmith_index_u32(global2.b.x, 32u)])), u_input.a), reverseBits(global2.b.x), var_0);
    var var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(countOneBits(-2147483647i), -1i)), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(~(-2147483647i), 1i), vec2<i32>(16851i, i32(-1i) * -2147483647i))));
    return 399f < _wgslsmith_f_op_f32(-global1.x);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(min(101326u, global0[_wgslsmith_index_u32(abs(global2.a), 32u)]), u_input.a);
    var var_1 = min(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 57921u), 32u)], ~(~global2.b.x), 1u), ~vec3<u32>(~(~var_0.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_0.a), vec3<u32>(0u, 0u, 11445u)), var_0.b.x));
    var var_2 = Struct_1(firstTrailingBit(~max(4294967295u, 0u)), ~abs(~(vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 32u)], 4294967295u) & vec2<u32>(u_input.a.x, var_0.b.x))));
    global2 = Struct_1(~(~global0[_wgslsmith_index_u32(7514u, 32u)]), vec2<u32>(_wgslsmith_mod_u32(var_1.x, u_input.a.x) | 1u, select(~(~15160u), 0u, func_3())));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1691f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.x, global1.x))))) + _wgslsmith_f_op_f32(global1.x - global1.x)), 1156f, -822f);
    return ~firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(4211i, -27402i), select(-2147483647i, 2147483647i, true), -2147483647i >> (var_2.b.x % 32u)), ~vec3<i32>(26631i, -1i, 0i)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1005f, -226f, _wgslsmith_f_op_f32(global1.x * 238f))))));
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-950f, 586f, _wgslsmith_f_op_f32(global1.x * 2827f), global1.x) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1980f, global1.x, -820f, 1121f))))));
    let var_1 = -(~min(1i, ~min(-78255i, 31934i)));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-5633i, -1i, -2147483647i), vec3<i32>(var_1, var_1, var_1), vec3<i32>(-350i, var_1, var_1))), min(vec3<i32>(2147483647i, -2147483647i, var_1), func_2())), _wgslsmith_clamp_i32(-var_1, -var_1, countOneBits(var_1)) ^ ~(-3666i)), var_1, -1i, -2147483647i);
    return Struct_2(all(vec3<bool>(all(!vec3<bool>(false, var_0, arg_0)), false, false && arg_0)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-385f + -416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f - global1.x) * _wgslsmith_f_op_f32(ceil(995f)))))), Struct_1(select(global2.b.x, global2.a, var_0), global2.b), 8844u, func_3());
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_4(2147483647i, min(0u, arg_1.c.a) >> (~arg_1.d % 32u), vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(44082u, 0u, global2.b.x), vec3<u32>(34099u, global0[_wgslsmith_index_u32(4294967295u, 32u)], 24339u))), vec3<u32>(global0[_wgslsmith_index_u32(13876u, 32u)], 37704u, arg_1.d) & vec3<u32>(global2.a, arg_1.d, arg_1.d)), ~1u), !(!select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(true, arg_1.a), false), !arg_1.a)));
    global2 = Struct_1(_wgslsmith_mult_u32(45511u, min(countOneBits(10299u), _wgslsmith_sub_u32(0u, u_input.a.x)) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global2.a, arg_1.c.a), vec3<u32>(arg_1.d, global0[_wgslsmith_index_u32(60422u, 32u)], 139006u))) % 32u)), abs(var_0.c & vec2<u32>(var_0.b, 452u)) ^ arg_1.c.b);
    var var_1 = func_1(arg_0);
    var var_2 = min(~(~_wgslsmith_mod_i32(var_0.a >> (4294967295u % 32u), _wgslsmith_div_i32(-2147483647i, var_0.a))), ~(max(_wgslsmith_sub_i32(-2147483647i, var_0.a), ~var_0.a) << (~var_0.b % 32u)));
    var var_3 = i32(-1i) * -2147483647i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(195f + var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, func_1(true)))), _wgslsmith_f_op_f32(func_4(select(true, true, false), Struct_2(any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + global1.yz), Struct_1(u_input.a.x, global2.b), ~u_input.a.x, true)))));
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-348f + -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-417f)))), _wgslsmith_f_op_f32(select(331f, _wgslsmith_div_f32(global1.x, global1.x), func_3())), _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, global1.x, -536f, -616f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(global1.x)), -1023f, -116f), true)))));
    var var_0 = min(global0[_wgslsmith_index_u32(4294967295u, 32u)], firstLeadingBit(countOneBits(~4294967295u >> (1u % 32u))));
    global3 = array<Struct_3, 23>();
    let var_1 = select(vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(true, true)), func_1(true).a, ~global2.a < _wgslsmith_clamp_u32(u_input.a.x, global2.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), vec3<bool>(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2140f)) == _wgslsmith_f_op_f32(sign(365f))));
    let var_2 = func_1(true).c;
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(~(~vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)))), vec4<i32>(select(-1i, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), -28545i), !any(vec4<bool>(var_1.x, true, var_1.x, false))), ~(-firstLeadingBit(1i)), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, -24199i, 2147483647i), 2147483647i), -8508i), ~(vec4<u32>(111445u, 8289u, 4294967295u, 1u) ^ (vec4<u32>(85486u, var_2.a, 44782u, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) ^ vec4<u32>(u_input.a.x, var_2.a, global2.a, 35739u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(min(3281u, global2.a), global0[_wgslsmith_index_u32(global2.a, 32u)] | u_input.a.x, ~u_input.a.x, abs(0u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global2.b.x)), ~1u, 57765u, global2.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global1.zwx));
}

