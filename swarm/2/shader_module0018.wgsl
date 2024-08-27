struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 36815u, 63719u), vec3<u32>(864u, 26164u, 1u), vec3<u32>(44380u, 4294967295u, 0u), vec3<u32>(41778u, 0u, 44456u), vec3<u32>(1u, 14342u, 4370u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 98328u, 26645u), vec3<u32>(4294967295u, 117261u, 1u), vec3<u32>(1u, 13858u, 0u), vec3<u32>(31645u, 5301u, 4294967295u), vec3<u32>(55725u, 79582u, 4294967295u), vec3<u32>(4294967295u, 7470u, 25214u), vec3<u32>(562u, 8129u, 6190u), vec3<u32>(45310u, 49122u, 30349u), vec3<u32>(4294967295u, 1u, 63627u), vec3<u32>(1081u, 0u, 6117u), vec3<u32>(51426u, 0u, 11025u), vec3<u32>(69668u, 4294967295u, 4294967295u), vec3<u32>(47267u, 1u, 956u), vec3<u32>(23147u, 5513u, 4294967295u), vec3<u32>(45600u, 51274u, 100432u), vec3<u32>(32201u, 4294967295u, 0u), vec3<u32>(4294967295u, 67331u, 38227u), vec3<u32>(97935u, 4294967295u, 112229u), vec3<u32>(0u, 0u, 1u));

var<private> global1: vec4<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = global1.xzz;
    var var_1 = Struct_3(_wgslsmith_add_vec2_u32(select(countOneBits(u_input.a), (u_input.a & vec2<u32>(6742u, 6488u)) << (vec2<u32>(49052u, u_input.a.x) % vec2<u32>(32u)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(arg_1, 34333u))), Struct_1(select(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.d, 1i), vec3<i32>(u_input.c, 0i, -1i)), ~max(vec3<i32>(-48085i, u_input.c, u_input.d), vec3<i32>(-2147483647i, -2147483647i, -15277i)), vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(~reverseBits(u_input.a), u_input.a), ~(~1i), u_input.c, ~abs(1i)));
    return _wgslsmith_add_u32(select(~1u, arg_0, false) << (min(u_input.a.x, var_1.a.x) % 32u), 46469u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = 19056i;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, 626f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -580f) * 1960f), global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1579f * -198f) * _wgslsmith_f_op_f32(-1033f * global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f + -1000f))) + _wgslsmith_f_op_f32(select(global1.x, -710f, true))), 1049f, _wgslsmith_f_op_f32(ceil(global1.x)));
    var var_1 = Struct_2(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x ^ arg_2, arg_2), func_3(21785u, arg_2) | arg_2), firstTrailingBit(u_input.a.x)), -firstTrailingBit(max(vec4<i32>(0i, 38294i, -4295i, 1i), vec4<i32>(-1i, arg_1, -20478i, -33904i))) | vec4<i32>(~var_0, firstTrailingBit(_wgslsmith_div_i32(var_0, 18926i)), -1i, var_0), Struct_1(-(vec3<i32>(-47164i, -1i, arg_1) << (global0[_wgslsmith_index_u32(~arg_0, 25u)] % vec3<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(~83677u, u_input.a.x), 21278u), _wgslsmith_mod_i32(i32(-1i) * -1i, countOneBits(43193i)) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 2147483647i, var_0), vec3<i32>(arg_1, var_0, -2147483647i)), -vec3<i32>(250i, arg_1, 1i)), (countOneBits(var_0) | firstTrailingBit(arg_1)) ^ firstLeadingBit(-2147483647i), arg_1 << (arg_2 % 32u)));
    var var_2 = Struct_3(~vec2<u32>(~arg_2, _wgslsmith_clamp_u32(var_1.c.b, arg_2, arg_2)) >> (u_input.a % vec2<u32>(32u)), var_1.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1285f)))) - -1616f);
    return global1.x;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1411f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_2(~u_input.a.x, _wgslsmith_div_i32(23896i, u_input.d), u_input.a.x))))));
    let var_1 = Struct_2(~select(min(~1u, _wgslsmith_mult_u32(11098u, 34707u)), max(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x), _wgslsmith_f_op_f32(step(352f, global1.x)) > 672f), vec4<i32>(u_input.c ^ abs(_wgslsmith_clamp_i32(u_input.d, -3495i, u_input.d)), ~_wgslsmith_clamp_i32(-30225i, u_input.c, u_input.b.x >> (u_input.a.x % 32u)), u_input.c, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-34718i, u_input.b.x), vec2<i32>(8609i, 1i)), -vec2<i32>(u_input.d, u_input.c)))), Struct_1(~vec3<i32>(52104i, -1i, _wgslsmith_div_i32(u_input.d, u_input.d)), ~(~11884u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, 1i), -(~(-39910i))), i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(35884i, 1i, u_input.b.x, -2147483647i), abs(vec4<i32>(-20687i, 1i, u_input.b.x, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(-42814i, u_input.c, u_input.c, 32938i), vec4<i32>(23100i, -9029i, -2147483647i, u_input.c))), ~(-vec4<i32>(-37527i, u_input.d, -1i, 0i)))));
    global1 = vec4<f32>(1318f, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)))), _wgslsmith_f_op_f32(step(var_0, -2438f)), -194f);
    var var_2 = _wgslsmith_dot_vec2_i32(abs(-(~vec2<i32>(var_1.b.x, -44309i))), ~(var_1.c.a.zx ^ var_1.c.a.yy));
    var_2 = 2147483647i;
    return Struct_2(~(u_input.a.x & var_1.a), -min(~var_1.b, var_1.b), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.x, 0i, -640i), vec3<i32>(2147483647i, var_1.b.x, -25247i)), abs(vec3<i32>(u_input.c, u_input.d, -2147483647i))), reverseBits(var_1.b.wxx)), ~(~u_input.a.x) | ~u_input.a.x, countOneBits(_wgslsmith_sub_i32(u_input.d, ~(-28651i))), _wgslsmith_div_i32(u_input.d, -2147483647i) >> (45057u % 32u), 15140i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = abs(select(min(16215u, var_0.c.b), 33201u, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))) & (_wgslsmith_sub_u32(4294967295u, max(u_input.a.x, u_input.a.x)) | _wgslsmith_add_u32(1u, 1u)));
    let var_2 = !vec2<bool>(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), 1u < _wgslsmith_mod_u32(u_input.a.x, 30720u));
    var var_3 = 1f;
    global0 = array<vec3<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-769f, global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-422f, 307f, global1.x)))), vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x)))))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(select(u_input.a.x, 66189u, true), ~var_0.c.b, ~4294967295u)), _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_mult_vec3_u32(vec3<u32>(14654u, u_input.a.x, 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(62404u, 41555u)), 25u)]))), var_0.c.b);
}

