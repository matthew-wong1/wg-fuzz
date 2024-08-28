struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, i32(-2147483648), -1i, 8021i, -1i);

var<private> global1: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<i32, 5>();
    global1 = arg_0;
    global0 = array<i32, 5>();
    var var_0 = firstLeadingBit(abs(global1.a.b.x));
    var var_1 = all(!select(select(vec4<bool>(true, arg_0.a.a, false, arg_0.a.a), vec4<bool>(false, global1.a.a, false, arg_0.a.a), false), select(vec4<bool>(true, global1.a.a, false, arg_0.a.a), vec4<bool>(true, arg_0.a.a, global1.a.a, false), arg_0.a.a), global1.a.a & true)) == (_wgslsmith_f_op_f32(floor(-662f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))));
    return arg_0.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~74242u, ~1u), 26170u) <= max(~(global1.a.c >> (global1.a.b.x % 32u)), 0u), any(!vec4<bool>(true, !arg_1.x, global1.a.a, arg_1.x)), 51745i >= reverseBits(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~arg_0.a.c, 5u)], ~u_input.c)), !all(!vec3<bool>(arg_1.x, global1.a.a, true)));
    let var_1 = !vec4<bool>(true, global1.a.a, func_2(Struct_2(Struct_1(false, arg_0.a.b, 0u))).a, any(!(!arg_1)));
    var_0 = !(!select(select(vec4<bool>(var_0.x, arg_0.a.a, var_1.x, true), select(vec4<bool>(arg_1.x, true, false, arg_0.a.a), vec4<bool>(arg_0.a.a, var_0.x, var_1.x, arg_0.a.a), var_1), any(arg_1)), vec4<bool>(true, true, true, all(var_1)), !(arg_0.a.a == true)));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-(~vec2<i32>(global0[_wgslsmith_index_u32(global1.a.b.x, 5u)], -1i)), (vec2<i32>(-1088i, global0[_wgslsmith_index_u32(1u, 5u)]) >> (vec2<u32>(arg_0.a.b.x, global1.a.c) % vec2<u32>(32u))) ^ ~vec2<i32>(-18053i, -1i)) ^ ~(-(vec2<i32>(71562i, global0[_wgslsmith_index_u32(4294967295u, 5u)]) | vec2<i32>(-5055i, -41978i))), -(~(~select(vec2<i32>(u_input.d, global0[_wgslsmith_index_u32(0u, 5u)]), vec2<i32>(-1i, u_input.d), vec2<bool>(global1.a.a, var_0.x)))));
    var_2 = -abs(abs(abs(vec2<i32>(-8912i, u_input.b) ^ vec2<i32>(-2147483647i, var_2.x))));
    return vec2<u32>(562u, ~(~abs(func_2(Struct_2(Struct_1(var_1.x, global1.a.b, 1u))).c)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<i32> {
    let var_0 = select(!vec2<bool>(any(vec3<bool>(false, true, global1.a.a)), select(arg_0.c.a.a, any(vec2<bool>(false, arg_0.a.x)), any(vec4<bool>(global1.a.a, true, global1.a.a, global1.a.a)))), arg_0.a, !(!vec2<bool>(false, false || arg_0.a.x)));
    let var_1 = Struct_1(select(false, true, arg_0.a.x), _wgslsmith_mult_vec2_u32(global1.a.b, func_3(Struct_2(func_2(Struct_2(Struct_1(global1.a.a, vec2<u32>(global1.a.b.x, global1.a.c), 57136u)))), select(select(vec3<bool>(arg_0.c.a.a, arg_0.c.a.a, global1.a.a), vec3<bool>(var_0.x, arg_0.a.x, false), true), !vec3<bool>(arg_0.a.x, global1.a.a, false), arg_0.a.x))), 1u);
    var var_2 = _wgslsmith_f_op_f32(-1000f * -433f);
    return ~_wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.a, -5698i, -13859i, arg_1)), vec4<i32>(_wgslsmith_div_i32(-1i, u_input.d), arg_1, 0i, -arg_1));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> Struct_4 {
    global0 = array<i32, 5>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1262f * 1000f) - arg_2) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(241f, -410f) - _wgslsmith_f_op_f32(min(arg_1, -451f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -544f) + -775f))));
    var var_1 = Struct_4(0i, vec3<u32>(0u, 13012u, ~6587u), min(arg_3 << (vec4<u32>(max(0u, global1.a.c), _wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x), abs(0u), 1u) % vec4<u32>(32u)), arg_0.c));
    let var_2 = min(_wgslsmith_clamp_vec4_u32(vec4<u32>(min(arg_0.b.x, ~global1.a.c), 66583u, _wgslsmith_mult_u32(4733u, select(0u, 1u, false)), ~var_1.b.x), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(arg_0.b.x, 43933u, var_1.b.x, 44743u)) ^ (vec4<u32>(48391u, global1.a.c, 4294967295u, 0u) | vec4<u32>(var_1.b.x, 79272u, global1.a.c, global1.a.b.x)), ~vec4<u32>(4294967295u, 0u, global1.a.b.x, var_1.b.x), (vec4<u32>(var_1.b.x, 100282u, global1.a.c, var_1.b.x) & vec4<u32>(4294967295u, 0u, global1.a.c, 4294967295u)) & ~vec4<u32>(64249u, var_1.b.x, 0u, var_1.b.x)), vec4<u32>(global1.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 98771u, global1.a.b.x), arg_0.b), 1u, global1.a.c)), vec4<u32>(98797u, ~abs(var_1.b.x), func_3(Struct_2(func_2(Struct_2(global1.a))), !select(vec3<bool>(false, true, true), vec3<bool>(global1.a.a, global1.a.a, global1.a.a), vec3<bool>(true, global1.a.a, global1.a.a))).x, 4294967295u));
    return Struct_4(min(-u_input.c, -2147483647i), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(71351u, 92576u, var_2.x)), abs(arg_0.b)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(5462u, global1.a.b.x, 81465u)), var_2.wzy), ~vec3<u32>(21506u, arg_0.b.x, var_2.x)), _wgslsmith_div_vec4_i32(var_1.c, vec4<i32>(~(~(-1i)), -4472i, arg_0.a, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(u_input.c << (max(global1.a.c, global1.a.b.x << (global1.a.c % 32u)) % 32u), min(vec3<u32>(0u, 1u, global1.a.c) << (~vec3<u32>(global1.a.b.x, global1.a.b.x, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.a.b.x, global1.a.c), ~vec3<u32>(global1.a.c, global1.a.b.x, global1.a.b.x))), select(-vec4<i32>(global0[_wgslsmith_index_u32(global1.a.c, 5u)], u_input.b, 6041i, global0[_wgslsmith_index_u32(47269u, 5u)]), func_1(Struct_3(vec2<bool>(false, global1.a.a), Struct_1(true, global1.a.b, 1u), Struct_2(Struct_1(global1.a.a, vec2<u32>(global1.a.c, 84693u), 0u))), ~(-5559i)), select(!vec4<bool>(false, true, global1.a.a, false), vec4<bool>(global1.a.a, false, false, global1.a.a), !vec4<bool>(false, global1.a.a, global1.a.a, global1.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-380f, -342f)) + -191f) * -392f), -1821f, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-global0[_wgslsmith_index_u32(global1.a.b.x, 5u)], u_input.b, _wgslsmith_mod_i32(u_input.c, global0[_wgslsmith_index_u32(global1.a.b.x, 5u)]), abs(global0[_wgslsmith_index_u32(global1.a.c, 5u)])), ~(~vec4<i32>(0i, 0i, u_input.d, u_input.b))), vec4<i32>(u_input.d, -select(u_input.c, -1i, global1.a.a), countOneBits(u_input.b), select(~u_input.c, 1i, false))));
    global1 = Struct_2(global1.a);
    var var_1 = global1.a;
    global0 = array<i32, 5>();
    var var_2 = Struct_2(Struct_1(true, var_1.b, (_wgslsmith_mult_u32(var_1.c, 69893u) & var_0.b.x) ^ 0u));
    let var_3 = Struct_2(func_2(Struct_2(var_2.a)));
    let var_4 = var_3;
    var var_5 = vec3<f32>(598f, _wgslsmith_f_op_f32(212f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(465f, -823f, var_3.a.a)) - -2029f))), _wgslsmith_f_op_f32(step(-1873f, _wgslsmith_f_op_f32(ceil(900f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, global1.a.b.x), reverseBits(var_1.c), global1.a.c ^ 89077u), select(vec3<u32>(var_4.a.c, var_1.c, 42177u), ~var_0.b, !vec3<bool>(true, var_3.a.a, var_4.a.a))), var_5.xz, vec3<u32>(firstLeadingBit(func_2(var_4).c), ~firstLeadingBit(var_2.a.b.x), var_1.c & _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4085u, global1.a.b.x, var_1.b.x, 14003u), vec4<u32>(var_4.a.b.x, 0u, global1.a.c, 4325u)), firstTrailingBit(vec4<u32>(var_3.a.b.x, global1.a.c, 0u, 10304u)))));
}

