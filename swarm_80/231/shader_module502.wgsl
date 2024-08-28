struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(455f, 839f, 586f), vec3<u32>(0u, 39591u, 6979u), 1i, vec2<i32>(-1i, -35959i));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<f32>(191f, -821f, -904f), vec3<u32>(1u, 16200u, 58823u), 2147483647i, vec2<i32>(0i, 0i)), Struct_1(vec3<f32>(-1323f, 1625f, -1836f), vec3<u32>(30382u, 4294967295u, 67424u), -10399i, vec2<i32>(7133i, 1954i)), Struct_1(vec3<f32>(-1000f, -1794f, 1797f), vec3<u32>(4294967295u, 1u, 49747u), -1i, vec2<i32>(1i, -9961i)), Struct_1(vec3<f32>(-499f, 1403f, 962f), vec3<u32>(83364u, 4294967295u, 41060u), -1i, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<f32>(1574f, -730f, 331f), vec3<u32>(4294967295u, 1u, 0u), 45754i, vec2<i32>(1i, -1i)), Struct_1(vec3<f32>(-217f, -194f, 1000f), vec3<u32>(4294967295u, 0u, 2661u), -1i, vec2<i32>(2147483647i, 0i)), Struct_1(vec3<f32>(1000f, -710f, -746f), vec3<u32>(1u, 1u, 1003u), 1i, vec2<i32>(1i, 2147483647i)), Struct_1(vec3<f32>(-134f, 1000f, 1023f), vec3<u32>(14134u, 7998u, 4294967295u), 0i, vec2<i32>(1i, -30398i)), Struct_1(vec3<f32>(-1253f, -1000f, 1000f), vec3<u32>(0u, 17384u, 0u), 2147483647i, vec2<i32>(-18387i, i32(-2147483648))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    global1 = Struct_1(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f * 885f) - _wgslsmith_f_op_f32(f32(-1f) * -761f)), -2096f), vec3<u32>(33167u, abs(~u_input.e.x) ^ u_input.a.x, _wgslsmith_sub_u32(~u_input.b.x, 76643u)), _wgslsmith_div_i32(0i, u_input.d.x), firstTrailingBit(firstTrailingBit(countOneBits(u_input.c)) | vec2<i32>(-2147483647i, -u_input.d.x)));
    let var_0 = vec2<bool>(true, _wgslsmith_sub_i32(firstLeadingBit(u_input.c.x), u_input.d.x) <= reverseBits(global1.d.x));
    global0 = any(select(select(vec2<bool>(!var_0.x, var_0.x), var_0, !select(var_0, vec2<bool>(var_0.x, true), var_0)), !var_0, !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), var_0))));
    let var_1 = !vec2<bool>(!(!(!var_0.x)), var_0.x && false);
    let var_2 = global2[_wgslsmith_index_u32(u_input.e.x, 9u)];
    return vec4<i32>(max(firstTrailingBit(i32(-1i) * -1i), _wgslsmith_mult_i32(-2147483647i, ~min(var_2.d.x, var_2.c))), -5935i, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(~1i, i32(-1i) * -1i), 43074i), global1.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<f32> {
    global1 = arg_1;
    global2 = array<Struct_1, 9>();
    let var_0 = arg_0;
    let var_1 = ~firstTrailingBit(~vec4<u32>(~30469u, 0u, 7029u, max(u_input.e.x, var_0.b.x)));
    let var_2 = vec4<i32>(~(~(-global1.c)), -610i, _wgslsmith_sub_i32(var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.d, -(~vec4<i32>(-5790i, arg_2.x, arg_0.d.x, -1i)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~func_3(), vec4<i32>(arg_0.c, _wgslsmith_clamp_i32(var_0.d.x, arg_0.c, -27295i), u_input.c.x, 0i)), u_input.d.x));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), var_0.a.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(44361u, _wgslsmith_mod_u32(global1.b.x << ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 56613u), global1.b.yz) | 13039u) % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(64808u, 62192u & global1.b.x), u_input.a.x))), 9u)];
    let var_1 = vec2<f32>(-2074f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1794f, _wgslsmith_f_op_f32(f32(-1f) * -139f), var_1.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.a.x, -101f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -160f, var_1.x))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(-919f)), -248f))), _wgslsmith_mod_vec3_u32(var_0.b, vec3<u32>(_wgslsmith_clamp_u32(~5422u, 96114u << (1u % 32u), firstTrailingBit(512u)), 0u, 4294967295u)), ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(-14216i, u_input.d.x), ~vec2<i32>(u_input.d.x, 0i)), 2147483647i), _wgslsmith_mod_vec2_i32(-select(_wgslsmith_mod_vec2_i32(u_input.c, global1.d), min(var_0.d, var_0.d), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(var_0.d.x, arg_1), 1i), abs(vec2<i32>(-23749i, 12237i)), u_input.d.ww)));
    var var_2 = _wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(1u, _wgslsmith_div_u32(var_0.b.x, 4294967295u)));
    return global2[_wgslsmith_index_u32(max(~(~var_0.b.x), ~countOneBits(~(var_0.b.x << (var_2.x % 32u)))), 9u)];
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    return select(select(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, true, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))), select(true, true, all(vec3<bool>(true, false, true))) | (any(vec2<bool>(true, false)) || true)), select(vec3<bool>(!any(vec4<bool>(false, true, false, true)), !(arg_0.b.x == 99017u), all(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !all(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<bool> {
    global0 = any(func_5(func_4(_wgslsmith_f_op_vec2_f32(func_2(global2[_wgslsmith_index_u32(firstTrailingBit(25921u), 9u)], Struct_1(vec3<f32>(arg_0, arg_0, global1.a.x), vec3<u32>(global1.b.x, u_input.a.x, arg_1), -7644i, vec2<i32>(1i, -9220i)), u_input.d)), global1.d.x)));
    var var_0 = u_input.b.xy;
    let var_1 = -1489f != arg_0;
    global2 = array<Struct_1, 9>();
    let var_2 = (global1.c << (min(min(3686u >> (1u % 32u), arg_1), ~_wgslsmith_sub_u32(4294967295u, var_0.x)) % 32u)) ^ 0i;
    return vec4<bool>(false, any(vec2<bool>(false, (-54152i >> (global1.b.x % 32u)) == max(-8698i, 15962i))), !var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = false;
    var var_2 = !select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), select(any(vec4<bool>(false, true, false, false)), false, true)), select(vec4<bool>(true, true, true, true), func_1(_wgslsmith_f_op_f32(-global1.a.x), ~var_0), false || any(vec4<bool>(true, false, false, false))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(any(vec2<bool>(false, true)), func_5(global2[_wgslsmith_index_u32(1u, 9u)]).x, any(vec4<bool>(true, false, true, true)), global1.a.x == -295f), true));
    global2 = array<Struct_1, 9>();
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(global1.a.xy + _wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)), ~global1.d.x).a.xy)), 0i);
    let var_4 = global1.b.x;
    var var_5 = u_input.d;
    let var_6 = _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global1.b.x, var_3.b.x) ^ _wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(15967u, var_3.b.x)), ~(~global1.b.zx)));
    var var_7 = func_1(-290f, var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_3.a.x, 1558f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x + global1.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), var_3.a.x));
}

