struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, vec3<i32>(-13955i, 1i, -21882i), 69466u), Struct_1(true, vec3<i32>(1i, -1i, -50217i), 78543u), Struct_1(true, vec3<i32>(i32(-2147483648), 2147483647i, 0i), 34515u), Struct_1(false, vec3<i32>(i32(-2147483648), 37863i, 843i), 0u), Struct_1(false, vec3<i32>(-1i, i32(-2147483648), 57798i), 1u), Struct_1(false, vec3<i32>(8358i, 1i, -1i), 75117u), Struct_1(true, vec3<i32>(20596i, -8768i, 2147483647i), 41403u), Struct_1(true, vec3<i32>(-1i, 2147483647i, 1i), 22038u), Struct_1(true, vec3<i32>(-1i, i32(-2147483648), 32638i), 4294967295u), Struct_1(true, vec3<i32>(-13588i, 16094i, -1i), 19475u), Struct_1(false, vec3<i32>(-7789i, 2147483647i, 1i), 1u), Struct_1(false, vec3<i32>(41497i, 30562i, 49378i), 4281u), Struct_1(true, vec3<i32>(-73883i, -1i, -26767i), 4294967295u), Struct_1(false, vec3<i32>(0i, 1i, i32(-2147483648)), 0u), Struct_1(false, vec3<i32>(26684i, 0i, 2147483647i), 4294967295u), Struct_1(true, vec3<i32>(0i, i32(-2147483648), 543i), 72971u), Struct_1(false, vec3<i32>(1i, 43619i, i32(-2147483648)), 32685u), Struct_1(false, vec3<i32>(1i, 1i, 82460i), 0u), Struct_1(true, vec3<i32>(1i, 1i, 2147483647i), 4294967295u), Struct_1(false, vec3<i32>(15635i, i32(-2147483648), 2147483647i), 8425u), Struct_1(true, vec3<i32>(-63776i, 8102i, 16124i), 9919u), Struct_1(false, vec3<i32>(-7511i, -62031i, 2147483647i), 73470u), Struct_1(false, vec3<i32>(0i, -24394i, 2147483647i), 57522u), Struct_1(false, vec3<i32>(i32(-2147483648), -16570i, 4206i), 24424u), Struct_1(false, vec3<i32>(-62411i, i32(-2147483648), 9560i), 1u), Struct_1(false, vec3<i32>(2147483647i, -5089i, -1i), 14316u), Struct_1(true, vec3<i32>(53343i, -37375i, i32(-2147483648)), 4236u), Struct_1(false, vec3<i32>(4926i, 2147483647i, 2147483647i), 12790u), Struct_1(true, vec3<i32>(-1i, 1i, -24902i), 0u), Struct_1(false, vec3<i32>(-1i, -1i, -18118i), 33728u));

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: vec4<i32> = vec4<i32>(19067i, 24993i, i32(-2147483648), 22392i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec4<bool> {
    let var_0 = select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) != _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(!(!(!vec2<bool>(arg_1, arg_1))), !select(select(vec2<bool>(arg_1, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, arg_1), 65394u < u_input.c), select(select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)), arg_1), select(vec2<bool>(false, false), !vec2<bool>(arg_1, false), !vec2<bool>(arg_1, true)), select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), !arg_1))));
    let var_1 = vec3<bool>(all(vec3<bool>(true, any(vec2<bool>(arg_1, arg_1)), true)), false, arg_1);
    var var_2 = global0[_wgslsmith_index_u32(~((countOneBits(1u << (1u % 32u)) | u_input.a.x) << ((_wgslsmith_mult_u32(4294967295u, ~u_input.d) >> (2621u % 32u)) % 32u)), 30u)];
    global1 = array<vec3<u32>, 8>();
    var_2 = global0[_wgslsmith_index_u32(~u_input.d, 30u)];
    return !select(select(vec4<bool>(!var_2.a, !var_1.x, var_1.x == var_1.x, any(var_1)), vec4<bool>(80790u != u_input.a.x, !arg_1, !var_0.x, any(vec3<bool>(var_2.a, arg_1, var_2.a))), vec4<bool>(var_0.x != var_2.a, all(vec2<bool>(false, var_1.x)), any(vec4<bool>(false, false, true, false)), var_1.x)), select(!vec4<bool>(var_2.a, false, var_0.x, true), !(!vec4<bool>(false, var_0.x, arg_1, false)), !vec4<bool>(var_1.x, arg_1, var_2.a, false)), select(true, !(var_0.x & true), 0u >= (45921u & var_2.c)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-240f * -233f), 1763f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(515f - _wgslsmith_f_op_f32(f32(-1f) * -1577f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-409f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1933f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f - var_0.x) - 247f)))), var_0.x, var_0.x);
    let var_1 = arg_0;
    var_0 = vec3<f32>(-1142f, 1152f, var_0.x);
    var var_2 = Struct_1(true, -(vec3<i32>(~2147483647i, global2.x, global2.x) | firstLeadingBit(select(vec3<i32>(5886i, var_1.b.x, global2.x), global2.wyx, true))), ~77374u);
    return func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -668f, -1189f, -365f)))))), any(select(!vec4<bool>(var_1.a, var_1.a, false, true), !vec4<bool>(var_2.a, true, true, true), true)) && !arg_0.a);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = !any(func_2(global0[_wgslsmith_index_u32(27326u, 30u)]));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.d), _wgslsmith_div_u32(~44224u, u_input.c)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(firstLeadingBit(firstTrailingBit(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(3164u, u_input.d, 40588u), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, abs(u_input.c), u_input.d), _wgslsmith_add_vec3_u32(u_input.a.xwz, ~global1[_wgslsmith_index_u32(12850u, 8u)])));
    var var_1 = Struct_1(any(vec4<bool>(true, true, true, true)), global2.xyx, u_input.c);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, ~(~var_1.c)), 30u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(394f + -1125f))) - _wgslsmith_f_op_f32(-255f * _wgslsmith_div_f32(-1490f, -1225f)))) - 630f);
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-603f, 381f, 1743f, 568f), vec4<f32>(1000f, -1000f, -918f, 575f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(171f, 1970f, 701f, 312f), vec4<f32>(-1131f, -1000f, 1000f, -888f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(var_3.b.x, var_1.b.x, global2.x, var_3.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global2.x, 39754i, 0i), select(vec4<i32>(594i, var_1.b.x, u_input.b, -3797i), vec4<i32>(-64378i, global2.x, var_3.b.x, -1i), vec4<bool>(false, true, var_1.a, false)), -vec4<i32>(-2147483647i, var_1.b.x, -2147483647i, var_3.b.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_3.b.x, -20285i) & vec4<i32>(var_1.b.x, global2.x, u_input.b, 2147483647i), ~vec4<i32>(var_1.b.x, u_input.b, -1i, 0i), select(_wgslsmith_div_vec4_i32(vec4<i32>(14510i, u_input.b, 26635i, 6026i), vec4<i32>(20217i, global2.x, 1i, var_3.b.x)), vec4<i32>(2147483647i, 18191i, u_input.b, -14780i), !vec4<bool>(var_1.a, var_1.a, var_3.a, false))), max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, var_3.b.x, u_input.b), vec4<i32>(1i, u_input.b, -1i, var_3.b.x)), vec4<i32>(_wgslsmith_sub_i32(u_input.b, var_3.b.x), -12714i, var_3.b.x, firstTrailingBit(u_input.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, 762f, -158f, 1000f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-703f, 498f, 1815f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1619f), _wgslsmith_f_op_f32(903f - 845f), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(sign(1549f)))))), ~var_0.xz);
}

