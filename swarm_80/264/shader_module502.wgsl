struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(14258i, i32(-2147483648), 1773i);

var<private> global1: array<u32, 7> = array<u32, 7>(3070u, 1u, 499u, 1u, 0u, 15422u, 4294967295u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec2<bool>(all(select(vec4<bool>(select(false, false, false), true, false, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), ~global0.x != 4260i)), true);
    let var_1 = vec4<i32>(countOneBits(_wgslsmith_div_i32(~_wgslsmith_div_i32(global0.x, 2147483647i), -_wgslsmith_clamp_i32(-1i, 1i, global0.x))), _wgslsmith_mult_i32(-10318i << (1u % 32u), 1i), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-68497i, -1i, 2147483647i, -39802i), vec4<i32>(global0.x, 33545i, global0.x, global0.x)), -vec4<i32>(global0.x, -4469i, 2147483647i, 8893i)) | global0.x), -43785i);
    var var_2 = Struct_2(var_0.x, Struct_1(arg_0.a), arg_0, arg_0);
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = !(!(u_input.a.x <= 57037u)) || (false && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-697f + 832f) + _wgslsmith_f_op_f32(sign(-551f))) < 594f));
    global1 = array<u32, 7>();
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>((24532u | global1[_wgslsmith_index_u32(u_input.c, 7u)]) | global1[_wgslsmith_index_u32(~10945u, 7u)], ~u_input.b.x << (u_input.c % 32u), 4294967295u, ~30471u) | ~func_3(Struct_1(vec3<f32>(443f, -391f, 1000f))), u_input.a);
    var var_2 = firstTrailingBit(~countOneBits(~reverseBits(vec2<u32>(76370u, 4294967295u))));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, 395f, -1072f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1798f, 1082f))), vec2<f32>(748f, 805f)))), ~reverseBits(~select(var_1.x, var_2.x, var_0)));
    return var_3.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-225f + -188f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1617f, 415f) * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1485f))))));
    global0 = vec3<i32>(1i, _wgslsmith_sub_i32(select(1i, -1765i, u_input.b.x > 40164u) ^ -arg_0.x, arg_2.x), -2147483647i);
    let var_1 = func_2();
    return Struct_2(all(arg_1.ww), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-924f - var_1.a.x) * 882f), -172f, 533f)), var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(852f, _wgslsmith_f_op_f32(abs(730f))));
    var var_1 = Struct_3(func_1(vec4<i32>(-firstLeadingBit(global0.x), 0i, ~global0.x, ~(-global0.x)), select(vec4<bool>(any(vec2<bool>(true, false)), true, false, true), vec4<bool>(true, true, true, false), true), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 1i, global0.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)] % 32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), ~vec3<i32>(6300i, -2147483647i, -33711i)))));
    var var_2 = func_2();
    var var_3 = Struct_3(func_1(-vec4<i32>(1i, ~global0.x, global0.x & global0.x, global0.x), vec4<bool>(true, var_1.a.a, all(vec3<bool>(true, var_1.a.a, false)), any(vec2<bool>(true, var_1.a.a))), ~((vec3<i32>(global0.x, global0.x, 2147483647i) >> (vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(4294967295u, 7u)]) % vec3<u32>(32u))) | countOneBits(vec3<i32>(-1i, global0.x, global0.x)))));
    var_3 = Struct_3(var_1.a);
    let var_4 = vec4<i32>(global0.x, ~(_wgslsmith_div_i32(global0.x, 44809i) << (~_wgslsmith_add_u32(60442u, global1[_wgslsmith_index_u32(u_input.b.x, 7u)]) % 32u)), global0.x, _wgslsmith_mod_i32(abs(firstTrailingBit(countOneBits(-22581i))), ~14608i | abs(global0.x & 13437i)));
    let var_5 = select(vec3<bool>(false || all(!vec4<bool>(var_3.a.a, true, var_1.a.a, false)), ~(var_4.x << (global1[_wgslsmith_index_u32(0u, 7u)] % 32u)) >= firstLeadingBit(-10524i), var_1.a.a), vec3<bool>(var_3.a.a, func_1(var_4 | ~vec4<i32>(-1i, var_4.x, var_4.x, var_4.x), !(!vec4<bool>(var_3.a.a, false, var_3.a.a, var_1.a.a)), max(reverseBits(vec3<i32>(var_4.x, var_4.x, -57700i)), ~vec3<i32>(1i, global0.x, 37865i))).a, var_3.a.a), !(!vec3<bool>(!var_1.a.a, false & var_3.a.a, any(vec2<bool>(true, false)))));
    var var_6 = ~min(_wgslsmith_mult_vec3_u32(u_input.a.zxz, select(~u_input.a.zxy, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x), true)), u_input.a.xzw);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u | ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 0u), select(_wgslsmith_dot_vec2_u32(var_6.zx >> (u_input.b % vec2<u32>(32u)), var_6.yz), 45700u, true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(u_input.c, 31645u, false), func_3(var_3.a.d).x << (var_6.x % 32u)), 7u)]), abs(1u), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1934f, -2204f) - _wgslsmith_f_op_vec3_f32(var_1.a.d.a * vec3<f32>(871f, var_1.a.d.a.x, -945f))))).x);
}

