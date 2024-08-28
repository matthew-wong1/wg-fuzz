struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, true, true, false, false, false, false, true, true, false, false, true, true, true, true, true, false, true, false, false, true, true, true, false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-911f + -1000f))))), _wgslsmith_f_op_f32(step(1372f, -809f)), _wgslsmith_f_op_f32(-777f + _wgslsmith_f_op_f32(floor(-494f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1095f, -306f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 1479f), vec3<f32>(1222f, var_0.x, var_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 168f, 2229f), vec3<f32>(-483f, var_0.x, var_0.x))))))));
    var var_1 = ~4541i;
    global0 = array<bool, 26>();
    let var_2 = Struct_2(Struct_1(reverseBits(vec4<i32>(u_input.c, u_input.c, u_input.d.x, u_input.c)) & _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, 0i, u_input.c, u_input.d.x)), firstTrailingBit(vec4<i32>(-1i, u_input.c, 18466i, u_input.d.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-128f, 150f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = select(!vec4<bool>(true, global0[_wgslsmith_index_u32(111793u, 26u)], _wgslsmith_f_op_f32(ceil(867f)) > arg_1, any(select(vec3<bool>(global0[_wgslsmith_index_u32(74621u, 26u)], false, global0[_wgslsmith_index_u32(1u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(414u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(9663u, 26u)])))), select(select(vec4<bool>(true, false, true, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(7297u, 26u)], false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 26u)], true)), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true))), select(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(41703u, 26u)], global0[_wgslsmith_index_u32(40431u, 26u)]), all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 26u)])))), vec4<bool>(_wgslsmith_mult_i32(arg_0.a.x, u_input.d.x) <= ~(-16992i), true, false, false), vec4<bool>(!any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(3428u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), (u_input.a.x << (u_input.e % 32u)) == _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 1u)), true, select(!global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 21761u), 26u)]))), !select(!select(vec4<bool>(global0[_wgslsmith_index_u32(12539u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(17110u, 26u)]), false), vec4<bool>(arg_1 == arg_1, global0[_wgslsmith_index_u32(~117493u, 26u)], any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 26u)], false, true, global0[_wgslsmith_index_u32(23788u, 26u)])), u_input.a.x > 1u), vec4<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(1683u, 26u)], true)), false, true)));
    var var_1 = arg_2;
    let var_2 = vec4<f32>(-779f, 687f, 695f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(796f)), _wgslsmith_f_op_f32(-arg_1), false)));
    var var_3 = Struct_1((~select(vec4<i32>(arg_2.a.a.x, arg_2.a.a.x, u_input.c, u_input.c), vec4<i32>(-47626i, -1i, var_1.a.a.x, 5557i), var_0.x) >> (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(12992u, u_input.a.x, u_input.a.x, u_input.b.x), vec4<u32>(3952u, u_input.a.x, u_input.b.x, 28917u))) % vec4<u32>(32u))) ^ -(~vec4<i32>(42276i, -1i, arg_2.a.a.x, -2147483647i)));
    let var_4 = var_2;
    return -select(-1i, arg_2.a.a.x, select(arg_0.a.x, -22300i, all(var_0.yz)) <= var_1.a.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = false;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_1 = u_input.d;
    var_1 = u_input.d;
    return Struct_1(vec4<i32>(0i, select(min(var_1.x, var_1.x), (-2147483647i << (u_input.b.x % 32u)) >> (arg_3.x % 32u), true), 1i, func_4(Struct_1(vec4<i32>(var_1.x, -18695i, var_1.x, -7636i) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(min(arg_1, -1106f))), Struct_2(Struct_1(vec4<i32>(-1i, var_1.x, 944i, u_input.c))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<bool, 26>();
    var var_0 = -u_input.d;
    var var_1 = -(~(-(vec4<i32>(-27777i, 0i, var_0.x, var_0.x) << (vec4<u32>(4294967295u, u_input.a.x, u_input.e, 1u) % vec4<u32>(32u)))));
    var var_2 = Struct_2(func_2(vec2<bool>(false && !global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_f_op_f32(-arg_0.x), 18042i, _wgslsmith_add_vec4_u32(u_input.a | firstTrailingBit(vec4<u32>(u_input.b.x, u_input.a.x, 1u, 24188u)), ~vec4<u32>(u_input.e, 12348u, u_input.b.x, u_input.a.x))));
    let var_3 = _wgslsmith_mult_i32(42197i | _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, u_input.d.x) | ~(-1i), var_2.a.a.x << (~u_input.e % 32u)), i32(-1i) * -var_2.a.a.x);
    return var_2.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_1, -548f), vec4<f32>(arg_0.x, -1174f, 712f, arg_0.x), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, -1520f, arg_1, -1000f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(921f, -638f, arg_0.x, 652f))), vec4<f32>(arg_0.x, arg_0.x, -1430f, arg_1)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1 - -876f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 - -669f), arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1, 1000f)), _wgslsmith_div_f32(arg_1, arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1412f, arg_0.x)))))));
    let var_1 = vec3<bool>(any(vec4<bool>(!(!global0[_wgslsmith_index_u32(1u, 26u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), ~u_input.b.zz), 26u)], true, global0[_wgslsmith_index_u32(~(~23506u), 26u)])), (0i >> (u_input.e % 32u)) != arg_2.a.x, all(arg_3.xx));
    var var_2 = firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(25301u, u_input.a.x), u_input.e) | countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), ~u_input.a.zw)));
    let var_3 = _wgslsmith_f_op_f32(func_3());
    var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, u_input.b.x), select(u_input.b, vec3<u32>(2049u, 77863u, u_input.e), false)), ~u_input.b), ~u_input.b.x) >> (u_input.a.x % 32u);
    return ~(~((u_input.e & u_input.a.x) & ~50653u)) & ~1543u;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = u_input.d.x;
    let var_2 = vec2<u32>(min(_wgslsmith_add_u32(~_wgslsmith_div_u32(var_0, 100316u), arg_1), arg_1), countOneBits(var_0));
    let var_3 = arg_2;
    let var_4 = Struct_1(abs(-var_3.a.a));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~104617u >> (~func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(996f, -698f) * vec2<f32>(-1447f, 330f)), -359f, func_1(vec4<f32>(-913f, 2019f, 359f, 1651f)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(16557u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, true))) % 32u), u_input.e, Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, -31873i), vec4<i32>(0i, 817i, -18052i, u_input.d.x), vec4<i32>(-20845i, u_input.d.x, u_input.c, u_input.c)), vec4<i32>(1i, 2147483647i, u_input.d.x, u_input.d.x)))), !(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.b.x, func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1522f, 1413f)), _wgslsmith_f_op_f32(1263f - 477f), Struct_1(var_0.a.a), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], false, global0[_wgslsmith_index_u32(308u, 26u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f * -634f)), _wgslsmith_f_op_f32(-478f - -992f), 787f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(207f * -1804f), -1294f), _wgslsmith_f_op_f32(func_3()), 165f, 513f)), ~firstLeadingBit(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 10443u, 0u, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(846f - _wgslsmith_div_f32(-779f, 785f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(1220f, 803f), _wgslsmith_f_op_f32(ceil(-2518f))))));
}

