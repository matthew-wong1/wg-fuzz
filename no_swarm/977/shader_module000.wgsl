struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(54327u, 1u, 31581u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 109621u), vec4<u32>(1u, 39862u, 29037u, 38740u), vec4<u32>(13462u, 4294967295u, 1u, 1u), vec4<u32>(45763u, 38077u, 4294967295u, 76378u), vec4<u32>(28719u, 9168u, 84225u, 4294967295u), vec4<u32>(29199u, 1u, 4294967295u, 41146u), vec4<u32>(21314u, 1u, 86722u, 4294967295u), vec4<u32>(0u, 7214u, 37219u, 22059u), vec4<u32>(1u, 2744u, 0u, 50628u), vec4<u32>(33066u, 4294967295u, 4898u, 1u), vec4<u32>(29851u, 19657u, 45281u, 4294967295u), vec4<u32>(4294967295u, 12485u, 1u, 61241u), vec4<u32>(17463u, 4294967295u, 24986u, 7577u), vec4<u32>(1u, 47098u, 7111u, 51542u), vec4<u32>(32848u, 0u, 51881u, 4294967295u), vec4<u32>(12321u, 4294967295u, 1u, 54469u), vec4<u32>(33987u, 0u, 4011u, 0u), vec4<u32>(0u, 55446u, 4294967295u, 4294967295u), vec4<u32>(55989u, 1777u, 94971u, 14629u), vec4<u32>(21585u, 29603u, 88088u, 0u), vec4<u32>(7550u, 1288u, 43363u, 4294967295u), vec4<u32>(4294967295u, 61314u, 53756u, 0u), vec4<u32>(0u, 142189u, 87582u, 48362u), vec4<u32>(26223u, 66391u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 72936u), vec4<u32>(30631u, 18289u, 4294967295u, 29307u), vec4<u32>(76769u, 1u, 9991u, 1u), vec4<u32>(2485u, 1u, 48053u, 1u), vec4<u32>(0u, 0u, 27906u, 10384u), vec4<u32>(0u, 7444u, 53936u, 47814u));

var<private> global1: array<i32, 3> = array<i32, 3>(1i, -55007i, -34755i);

var<private> global2: vec4<i32>;

var<private> global3: array<bool, 30>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1351f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(122f * -184f), 1f, arg_1.a.x))) - 2028f));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.zzx)));
    var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(149f, 201f, arg_1.b.x)) * vec3<f32>(arg_0, arg_0, -481f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1253f)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(240f)) - _wgslsmith_f_op_f32(ceil(-127f))))));
    let var_3 = global3[_wgslsmith_index_u32(1u, 30u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-779f)) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(-arg_1.b.x)))) - _wgslsmith_f_op_f32(arg_0 - var_0.b.x))));
}

fn func_2() -> f32 {
    let var_0 = global4.a.ww;
    var var_1 = Struct_1(select(!global4.a, global4.a, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(-518f, Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 30u)], false, global3[_wgslsmith_index_u32(1u, 30u)], false), global4.b, u_input.c.x), false)), 500f)), 732f, global4.b.x, _wgslsmith_f_op_f32(min(global4.b.x, global4.b.x))) + vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), global4.b.x, 221f)), -global4.c);
    global1 = array<i32, 3>();
    var var_2 = Struct_1(var_1.a, global4.b, countOneBits(abs(global2.x << (_wgslsmith_div_u32(u_input.d, 0u) % 32u))));
    global2 = vec4<i32>(-33811i, global2.x, i32(-1i) * -(~u_input.c.x), -global4.c);
    return -1352f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<vec4<u32>, 31>();
    let var_0 = vec4<f32>(global4.b.x, global4.b.x, global4.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.b.x)) + 644f)))));
    let var_1 = ~_wgslsmith_add_vec3_i32((global2.wyx >> ((vec3<u32>(30057u, u_input.d, 38674u) | vec3<u32>(34910u, u_input.b.x, 0u)) % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(~vec3<i32>(global2.x, -1i, u_input.c.x), -global2.zxw), global2.xwz);
    let var_2 = Struct_1(global4.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_2()), -628f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global4.b.x)), -147f, global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f))), vec4<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(func_2()), -396f, -1000f))), var_1.x);
    global4 = var_2;
    return var_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = true;
    global1 = array<i32, 3>();
    var var_1 = arg_1;
    var var_2 = vec3<u32>(0u, 6543u, ~reverseBits(firstTrailingBit(~45860u)));
    var var_3 = !global3[_wgslsmith_index_u32(var_2.x, 30u)];
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, var_1.c, var_1.c), vec4<i32>(arg_1.c, u_input.a.x, 0i, 0i))), global1[_wgslsmith_index_u32(13652u, 3u)], ~_wgslsmith_dot_vec3_i32(vec3<i32>(-10498i, arg_1.c, 8787i), vec3<i32>(global1[_wgslsmith_index_u32(var_2.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -46267i))), vec3<i32>(u_input.a.x, -1096i, -62405i)), -2147483647i, ((select(5370i, -2662i, global3[_wgslsmith_index_u32(1u, 30u)]) << ((var_2.x ^ var_2.x) % 32u)) >> (4294967295u % 32u)) << (~(~(~var_2.x)) % 32u), i32(-1i) * -17170i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(~(-min(vec4<i32>(-4452i, -1001i, 16236i, global2.x) >> (vec4<u32>(9565u, u_input.d, 1u, u_input.b.x) % vec4<u32>(32u)), max(vec4<i32>(global2.x, 1i, -1i, global4.c), vec4<i32>(-33226i, global2.x, global2.x, -1i)))), -_wgslsmith_clamp_vec4_i32(func_4(global4.b.zx, func_1(global4.c)), select(vec4<i32>(24602i, global2.x, 2147483647i, -2147483647i), vec4<i32>(global2.x, global4.c, 2147483647i, 42080i), vec4<bool>(false, true, false, false)) ^ firstLeadingBit(vec4<i32>(u_input.a.x, -53081i, u_input.c.x, 0i)), vec4<i32>(func_4(vec2<f32>(268f, -842f), Struct_1(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], false, true), vec4<f32>(global4.b.x, 1185f, global4.b.x, global4.b.x), global4.c)).x, select(4593i, -1i, global4.a.x), 9257i, -global4.c)), false);
    let var_0 = Struct_1(global4.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global4.b, global4.b, global3[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, 543f, -622f, global4.b.x) - global4.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-909f, global4.b.x, 173f, -776f), global4.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global4.b)))), abs(~(-global4.c)) >> ((_wgslsmith_add_u32(~u_input.d, u_input.b.x) << (u_input.b.x % 32u)) % 32u));
    global3 = array<bool, 30>();
    global4 = var_0;
    global1 = array<i32, 3>();
    var var_1 = vec4<i32>(_wgslsmith_div_i32(1i, -global2.x), abs(0i), -42715i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global2.x, 2147483647i), -global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), var_0.c)) | _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global2.x, global1[_wgslsmith_index_u32(32920u, 3u)], -2797i), vec4<i32>(u_input.c.x, global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], var_0.c)), reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 2147483647i, 1i, global2.x))), vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(var_0.c, u_input.c.x)), 1i, -1i, max(~2147483647i, _wgslsmith_div_i32(1895i, global4.c))));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.b.yx), u_input.b.x | u_input.b.x), vec2<u32>(4294967295u, u_input.b.x) & vec2<u32>(4294967295u, 4294967295u)) | 42022u, select(u_input.b, _wgslsmith_div_vec3_u32(max(abs(u_input.b), vec3<u32>(u_input.b.x, 4294967295u, u_input.d) << (u_input.b % vec3<u32>(32u))), (vec3<u32>(89634u, u_input.b.x, 1u) ^ u_input.b) & reverseBits(vec3<u32>(u_input.d, u_input.b.x, u_input.b.x))), vec3<bool>(global4.a.x, true, (41897u << (u_input.d % 32u)) < ~34052u)), countOneBits(4294967295u));
}

