struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(20914i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(17419i, 18613i), vec2<i32>(0i, -20629i), vec2<i32>(-33500i, 1671i), vec2<i32>(2147483647i, -41615i), vec2<i32>(-26539i, 1i), vec2<i32>(1i, -63621i), vec2<i32>(22998i, 4009i), vec2<i32>(-2569i, 57756i), vec2<i32>(20164i, 27186i), vec2<i32>(-14173i, 2147483647i), vec2<i32>(32101i, 13873i), vec2<i32>(0i, 64976i), vec2<i32>(4068i, i32(-2147483648)), vec2<i32>(19404i, 0i), vec2<i32>(12380i, -12750i), vec2<i32>(22489i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(35137i, -93513i), vec2<i32>(1i, 56732i), vec2<i32>(i32(-2147483648), 28931i), vec2<i32>(-27533i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -47046i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(0i, 2147483647i));

var<private> global2: vec4<i32> = vec4<i32>(-1i, -51227i, -22549i, -43895i);

var<private> global3: array<Struct_3, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    var var_0 = !(min(~0u, 0u << (_wgslsmith_div_u32(52660u, 40076u) % 32u)) >= _wgslsmith_clamp_u32(1u, min(1u, _wgslsmith_mod_u32(1u, 28560u)), 13564u));
    var_0 = select(select(true, any(vec3<bool>(true, true, true)), !select(true, true, true)), !all(vec2<bool>(true, true)), false);
    global2 = firstLeadingBit(select(vec4<i32>(_wgslsmith_add_i32(~u_input.a, _wgslsmith_div_i32(2147483647i, global2.x)), global2.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, u_input.a), vec4<i32>(-27368i, -2147483647i, global2.x, 2147483647i)), ~global2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(42116i, -global2.x, abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), global2.xw)), ~(-vec4<i32>(global2.x, 41503i, -38779i, -51326i))), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), -1469i > u_input.a)));
    global3 = array<Struct_3, 17>();
    var_0 = ~(~(~_wgslsmith_add_u32(3863u, 1u))) < ~firstTrailingBit(_wgslsmith_sub_u32(1u, ~4294967295u));
    return _wgslsmith_add_vec4_i32(vec4<i32>(~26481i, _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-3673i, global2.x), abs(u_input.a)), _wgslsmith_clamp_i32(-2147483647i, 1i, global2.x)) | vec4<i32>(~global2.x, -(u_input.a >> (4294967295u % 32u)), u_input.a, -global2.x), vec4<i32>(_wgslsmith_div_i32(~global2.x, -6095i), u_input.a >> (_wgslsmith_clamp_u32(4294967295u, 1u, abs(4294967295u)) % 32u), ~_wgslsmith_add_i32(-1i, 2147483647i), _wgslsmith_dot_vec2_i32(~select(vec2<i32>(-2147483647i, -1i), global1[_wgslsmith_index_u32(13804u, 31u)], vec2<bool>(true, true)), firstTrailingBit(abs(vec2<i32>(u_input.a, u_input.a))))));
}

fn func_2() -> Struct_1 {
    global2 = max(func_3(), vec4<i32>(-_wgslsmith_dot_vec3_i32(~global2.zzw, vec3<i32>(-40292i, global2.x, 0i) >> (vec3<u32>(0u, 64427u, 57877u) % vec3<u32>(32u))), global2.x, 2147483647i, -2147483647i));
    var var_0 = vec4<i32>(-2147483647i, -66557i, 1i, _wgslsmith_mult_i32(1i, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -49464i, global2.x), vec3<i32>(-1i, u_input.a, u_input.a))));
    var var_1 = Struct_1(min(vec4<u32>(0u, ~_wgslsmith_add_u32(0u, 41297u), _wgslsmith_add_u32(1u, 70237u), ~1u), vec4<u32>(1u, min(~1u, ~14806u), 0u, 4294967295u)), reverseBits(global2.x), false || !any(vec4<bool>(false, false, true, false)));
    let var_2 = ~(~(var_1.a << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 58750u, 123381u), vec4<u32>(var_1.a.x, var_1.a.x, 1u, var_1.a.x)), var_1.a) % vec4<u32>(32u))));
    let var_3 = 2147483647i;
    return Struct_1(max(~countOneBits(var_2), ~vec4<u32>(0u, var_2.x, var_1.a.x, 0u)), _wgslsmith_sub_i32(reverseBits(30801i), i32(-1i) * -5648i), var_1.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = (-(~(i32(-1i) * -2150i)) << (arg_1.a.x % 32u)) >= (0i ^ -func_3().x);
    let var_1 = true;
    global3 = array<Struct_3, 17>();
    var var_2 = firstTrailingBit(1i);
    var_2 = select(~(arg_1.b | -(~2147483647i)), max(-1i, _wgslsmith_clamp_i32(13477i, _wgslsmith_add_i32(arg_1.b, -30709i), ~4766i)), true);
    return Struct_2(1f, func_2());
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> bool {
    let var_0 = func_4(true, func_2());
    global1 = array<vec2<i32>, 31>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(abs(var_0.a)), arg_1)), var_0.b);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-462f + _wgslsmith_f_op_f32(var_0.a * -1000f)), _wgslsmith_f_op_f32(-arg_0), arg_0);
    global0 = var_1.b.a.x;
    return var_2.x >= 112f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec4<bool>(true, false, any(vec2<bool>(false, true)) | true, select(true, true, false)), vec4<bool>(true, true, true, true), true));
    var var_1 = select(vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(!(any(vec4<bool>(true, false, false, false)) && true), !(any(vec2<bool>(true, false)) && all(vec3<bool>(true, true, false))), !func_1(1640f, true, global3[_wgslsmith_index_u32(68501u, 17u)]) || true), global2.x >= u_input.a);
    let var_2 = func_4(!select(var_1.x, any(vec4<bool>(var_1.x, var_1.x, true, false)), true), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), -8017i, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.a, -235f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - -1354f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, -315f, -1312f)), vec4<f32>(var_2.a, -391f, _wgslsmith_f_op_f32(floor(1283f)), -1566f)))), 0i, _wgslsmith_f_op_f32(-962f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
}

