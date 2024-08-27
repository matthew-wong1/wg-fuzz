struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global2: array<u32, 4> = array<u32, 4>(13770u, 1u, 87743u, 0u);

var<private> global3: vec3<i32> = vec3<i32>(-7939i, 31883i, i32(-2147483648));

var<private> global4: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = global3.zx;
    let var_1 = Struct_4(Struct_3(Struct_2(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true)), (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 4u)], 4u)]), global4.xx, vec2<u32>(0u, 0u)) & min(vec2<u32>(52516u, 0u), vec2<u32>(67516u, 1u))) & reverseBits(vec2<u32>(4294967295u, 33981u) >> (vec2<u32>(global4.x, 64286u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1388f)) - -401f) - 1f), Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false))), global4.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-314f * 244f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1057f, _wgslsmith_f_op_f32(f32(-1f) * -796f)) * _wgslsmith_f_op_f32(min(-104f, -157f)))), _wgslsmith_add_u32(~(~0u), _wgslsmith_dot_vec2_u32(global4.yz, vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], ~51504u))), global4.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, ~u_input.a, ~u_input.a, 23510u)), abs(vec4<u32>(~u_input.a, _wgslsmith_add_u32(global4.x, 3002u), global4.x, ~u_input.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-419f + var_1.b), -1761f, all(vec3<bool>(var_1.a.a.a.x, var_1.a.d.a.x, false)))))) + _wgslsmith_f_op_f32(982f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.b)))))));
}

fn func_2() -> Struct_4 {
    let var_0 = !select(vec3<bool>(1447f != _wgslsmith_f_op_f32(func_3()), all(vec3<bool>(true, true, false)), false), !vec3<bool>(any(vec3<bool>(false, false, false)), true, any(vec3<bool>(false, true, false))), vec3<bool>(!all(vec2<bool>(false, true)), true, true));
    global3 = select(select(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3.x, global3.x, 18344i) << (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(2147483647i, -2147483647i, global3.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global3.x, 14109i), vec3<i32>(global3.x, 51817i, 12562i)), _wgslsmith_div_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(49490i, -1i, global3.x)))), vec3<i32>(global3.x, ~global3.x, -68256i), var_0), select(-max(~vec3<i32>(15933i, global3.x, -4213i), -vec3<i32>(1i, global3.x, 1120i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(global3.x, global3.x, 0i)), vec3<i32>(global3.x, 1i, global3.x))), vec3<bool>(any(!var_0.xz), true, var_0.x)), var_0);
    global3 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(-1513i, global3.x), vec2<i32>(-51312i, 53970i), var_0.x), vec2<i32>(_wgslsmith_div_i32(-20246i, global3.x), _wgslsmith_mod_i32(global3.x, 1i))), 0i, (-global3.x << (1u % 32u)) << (_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(14183u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65657u, 4u)], 4u)], 4u)] % 32u), 4u)]) % 32u)), min(~(~countOneBits(vec3<i32>(global3.x, global3.x, 0i))), vec3<i32>(global3.x << (min(10847u, 4294967295u) % 32u), -19666i, global3.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, 1244f)) - vec2<f32>(-2178f, 1962f)) * vec2<f32>(_wgslsmith_f_op_f32(999f + -855f), -1000f))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-347f, -576f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(-594f)), var_1.x))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 575f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-862f, 651f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), global4.x != ~1u)))));
    return Struct_4(Struct_3(Struct_2(var_0.xz), global4.zx, var_1.x, Struct_2(!select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), true)), global4.xz), _wgslsmith_f_op_f32(-var_1.x), 1u, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 45717u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29702u, 4u)], 4u)]) << (vec3<u32>(global2[_wgslsmith_index_u32(0u, 4u)], u_input.a, 32683u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5016u, 4u)], 4u)], u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(1214u, u_input.a, 0u)))), abs(u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = max(reverseBits(vec3<i32>(1i, ~global3.x, countOneBits(-38520i))), abs(vec3<i32>(global3.x, countOneBits(global3.x), global3.x))) ^ vec3<i32>(global3.x, reverseBits(_wgslsmith_mod_i32(global3.x, 2147483647i) ^ global3.x), -(~global3.x));
    global4 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32((max(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(10999u, global2[_wgslsmith_index_u32(arg_0.b.x, 4u)], arg_1.a.e.x)) ^ vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(30868u, 4u)], global2[_wgslsmith_index_u32(arg_0.b.x, 4u)])) << (firstTrailingBit(vec3<u32>(1u, 15185u, global2[_wgslsmith_index_u32(0u, 4u)])) % vec3<u32>(32u)), abs(~vec3<u32>(global2[_wgslsmith_index_u32(arg_0.b.x, 4u)], global2[_wgslsmith_index_u32(9579u, 4u)], 4294967295u) ^ (vec3<u32>(u_input.a, 31946u, 0u) >> (vec3<u32>(global4.x, global2[_wgslsmith_index_u32(27459u, 4u)], 0u) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(20614u, 77572u, 0u) >> (vec3<u32>(global2[_wgslsmith_index_u32(arg_1.a.b.x, 4u)], 4294967295u, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.x, 47295u, arg_1.a.b.x), vec3<u32>(1u, arg_0.e.x, global2[_wgslsmith_index_u32(arg_1.c, 4u)]), vec3<u32>(arg_0.e.x, arg_1.d, 4294967295u))) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(u_input.a, 58863u, 34484u))), ~vec3<u32>(func_2().e, 1u, 42860u));
    let var_1 = arg_1.a.d.a.x;
    let var_2 = arg_0;
    let var_3 = func_2();
    return vec2<bool>(var_3.a.d.a.x, all(vec3<bool>(true, any(select(vec3<bool>(false, true, var_1), vec3<bool>(var_2.a.a.x, false, false), var_2.d.a.x)), true)));
}

fn func_1() -> bool {
    let var_0 = select(!(!func_4(Struct_3(Struct_2(vec2<bool>(false, false)), vec2<u32>(54092u, 1u), 2211f, Struct_2(vec2<bool>(true, true)), global4.xz), func_2())), vec2<bool>(any(vec2<bool>(true, global3.x > global3.x)), false), vec2<bool>(global3.x <= _wgslsmith_clamp_i32(firstLeadingBit(-6730i), global3.x, 675i << (global4.x % 32u)), true));
    global0 = !(any(vec2<bool>(true, false)) & var_0.x);
    let var_1 = -400f;
    global1 = array<Struct_1, 19>();
    global0 = true;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 4>();
    global1 = array<Struct_1, 19>();
    var var_0 = select(vec3<bool>(false, (true | func_1()) & true, func_1()), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -14340i > global3.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true & all(vec2<bool>(true, true))), !(all(vec3<bool>(true, true, true)) & any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    global4 = select(~_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(4294967295u, global4.x, 0u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 1u, 29410u), vec3<u32>(global4.x, 63785u, global4.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(46141u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<u32>(u_input.a, 4294967295u, 1u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, global2[_wgslsmith_index_u32(52219u, 4u)], 38353u), vec3<u32>(0u, u_input.a, 0u), vec3<bool>(var_0.x, var_0.x, var_0.x)), abs(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(8946u, 4u)], global4.x)))), _wgslsmith_add_vec3_u32(~min(vec3<u32>(global4.x, 50699u, 1u), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global4.x, 4u)], global4.x)), firstTrailingBit(select(vec3<u32>(11238u, global2[_wgslsmith_index_u32(0u, 4u)], 29276u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], 16271u, 21871u), vec3<bool>(var_0.x, false, false))))), !var_0.x);
    let var_1 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-616f, 1215f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(613f, 552f)) + _wgslsmith_f_op_f32(1182f * 184f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

