struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), 9852i, 1u, vec2<f32>(-593f, -147f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = Struct_1(global1.b.wwx, vec4<bool>(!(false | global1.a.x), all(select(select(global1.b, global1.b, true), global1.b, true)), _wgslsmith_div_u32(4586u | arg_1, global1.d) == _wgslsmith_mult_u32(~global1.d, ~arg_1), !global1.b.x), ~global1.c, max(global1.d & arg_1, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_1, 51878u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.d, arg_1, arg_1), vec3<u32>(0u, arg_1, global1.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.e.x)) + _wgslsmith_f_op_f32(min(1208f, 995f)))), 552f));
    var var_1 = _wgslsmith_clamp_u32(~(~6057u), arg_1 << (_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(12494u, global1.d, arg_1)), abs(vec3<u32>(global1.d, 26131u, 3645u))) % 32u), ~arg_1);
    global1 = Struct_1(vec3<bool>(global1.b.x, select(true, true, all(select(var_0.b, vec4<bool>(var_0.b.x, global1.b.x, true, global1.a.x), var_0.b.x))), true), select(!vec4<bool>(select(global1.a.x, global1.b.x, false), global1.a.x, any(var_0.b.zy), var_0.a.x), select(select(vec4<bool>(true, global1.b.x, true, var_0.a.x), var_0.b, vec4<bool>(true, global1.b.x, true, var_0.a.x)), select(!vec4<bool>(global1.a.x, global1.b.x, false, global1.b.x), !global1.b, true), true), all(!select(vec2<bool>(var_0.b.x, global1.b.x), vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(false, var_0.b.x)))), 2147483647i, 0u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, 1000f)), var_0.e, any(var_0.b.zy))));
    var var_2 = var_0.b.x;
    var var_3 = Struct_1(vec3<bool>(global1.b.x, true, true), !vec4<bool>(false, any(!vec2<bool>(var_0.a.x, false)), true, false), global1.c, var_0.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_0.e, vec2<f32>(2195f, -736f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1395f, var_0.e.x)))))));
    return var_3.a.x || true;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, !(!(global1.a.x & true)), !(!global1.b.x)), !select(vec4<bool>(!global1.a.x, true, !global1.a.x, false), global1.b, any(vec3<bool>(global1.b.x, global1.b.x, true))), arg_1.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, min(arg_0.x, global1.d)), select(~arg_0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.d, 38747u, 0u), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 4472u)), func_3(-vec2<i32>(-17783i, 41705i), ~0u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e.x, global1.e.x))) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(max(1578f, global1.e.x))));
    var var_1 = Struct_1(select(vec3<bool>(global1.a.x, global1.b.x, !any(vec4<bool>(global1.b.x, false, true, global1.a.x))), !vec3<bool>(true, true, var_0.a.x), !select(select(vec3<bool>(var_0.b.x, true, false), vec3<bool>(true, global1.b.x, global1.b.x), vec3<bool>(false, true, false)), select(vec3<bool>(false, var_0.b.x, false), var_0.a, vec3<bool>(true, global1.a.x, true)), all(vec4<bool>(false, true, var_0.a.x, var_0.b.x)))), global1.b, ~var_0.c & -4021i, 4294967295u, var_0.e);
    let var_2 = 33123i;
    let var_3 = vec3<i32>(-(global1.c & ~30432i), i32(-1i) * -1i, ~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, var_2), arg_1.yz)));
    var var_4 = global1.c;
    return Struct_1(select(var_0.b.zwy, select(vec3<bool>(any(vec4<bool>(false, var_1.b.x, var_0.b.x, false)), true, !var_1.a.x), select(select(vec3<bool>(global1.a.x, global1.a.x, global1.b.x), vec3<bool>(var_1.a.x, true, var_0.a.x), var_0.b.wxw), select(vec3<bool>(var_0.b.x, true, false), vec3<bool>(global1.b.x, var_1.a.x, var_1.a.x), var_0.b.x), true), !(!vec3<bool>(true, var_0.b.x, var_1.a.x))), vec3<bool>(any(select(vec2<bool>(var_0.a.x, true), var_1.b.xz, vec2<bool>(global1.b.x, var_1.a.x))), !select(global1.b.x, true, global1.a.x), true || var_1.a.x)), vec4<bool>(true, false, any(select(select(vec3<bool>(var_0.b.x, true, true), vec3<bool>(var_0.a.x, true, true), vec3<bool>(var_1.a.x, var_1.b.x, var_0.b.x)), vec3<bool>(var_0.a.x, false, true), var_0.c != -1i)), any(select(vec2<bool>(var_0.a.x, var_0.b.x), !var_0.b.xz, all(global1.a.yz)))), -(_wgslsmith_mult_i32(var_1.c, -1i << (arg_0.x % 32u)) | firstTrailingBit(arg_1.x)), ~1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_f_op_f32(f32(-1f) * -363f))) - var_0.e.x), var_1.e.x));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_2(firstLeadingBit(vec3<u32>(64664u, ~(~global1.d), ~arg_0.d >> (global1.d % 32u))), _wgslsmith_div_vec3_i32(-(vec3<i32>(arg_0.c, arg_0.c, -1i) >> (vec3<u32>(global1.d, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(5626i, arg_0.c, -1i), vec3<i32>(1i, -29821i, 2147483647i))) ^ vec3<i32>(55063i, u_input.a, _wgslsmith_sub_i32(global1.c << (arg_0.d % 32u), global1.c)));
    let var_1 = Struct_1(!select(!select(global1.a, arg_0.b.zxz, var_0.b.x), vec3<bool>(all(vec2<bool>(var_0.a.x, true)), 1i == var_0.c, false), vec3<bool>(any(var_0.a), true, false)), vec4<bool>(false, all(vec4<bool>(!arg_0.b.x, all(vec3<bool>(var_0.a.x, arg_0.a.x, false)), any(vec4<bool>(false, var_0.a.x, true, true)), any(global1.b))), func_2(~(vec3<u32>(global1.d, 6457u, 68633u) << (vec3<u32>(21962u, global1.d, var_0.d) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-17866i, arg_0.c, 2147483647i), vec3<i32>(-2147483647i, u_input.a, arg_0.c), _wgslsmith_div_vec3_i32(vec3<i32>(global1.c, -1i, global1.c), vec3<i32>(33889i, var_0.c, arg_0.c)))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)) == 148f), _wgslsmith_dot_vec3_i32(~select(vec3<i32>(arg_0.c, -41245i, -1i), vec3<i32>(1i, 0i, var_0.c), arg_0.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(global1.c, u_input.a, var_0.c), vec3<i32>(-2147483647i, u_input.a, global1.c) ^ vec3<i32>(u_input.a, global1.c, var_0.c))) | u_input.a, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(867f - 1000f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.e))))));
    let var_2 = ~(~firstTrailingBit(func_2(vec3<u32>(arg_0.d, global1.d, global1.d), vec3<i32>(global1.c, 17799i, var_0.c)).d)) >> (~4294967295u % 32u);
    global0 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(var_2, var_1.d), 29147u >> (var_2 % 32u));
    var var_3 = Struct_1(var_1.b.yyw, var_1.b, -abs(global1.c), var_2, _wgslsmith_f_op_vec2_f32(global1.e * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.e.x, var_1.e.x), _wgslsmith_f_op_vec2_f32(global1.e + var_1.e))), var_1.e, global1.b.zw))));
    return _wgslsmith_div_u32(~54059u, ~var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~4294967295u;
    var var_0 = Struct_1(!(!(!vec3<bool>(global1.a.x, false, false))), !global1.b, ~u_input.a, ~func_1(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, global1.a.x, global1.b.x, true), -2147483647i, global1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, global1.e.x) - vec2<f32>(global1.e.x, global1.e.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec3<u32>(1u, global1.d, global1.d), vec3<i32>(2147483647i, 0i, global1.c)).e.x)), global1.e.x));
    var var_1 = global1.d;
    var var_2 = var_0.e.x;
    var var_3 = var_0.a.x || var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-389f)))) + _wgslsmith_f_op_f32(max(func_2(vec3<u32>(17351u, 4294967295u, global1.d), vec3<i32>(var_0.c, u_input.a, u_input.a)).e.x, global1.e.x)))), -_wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(global1.c, 6436i, u_input.a, 24246i)), vec4<i32>(u_input.a, global1.c, _wgslsmith_mult_i32(u_input.a, var_0.c), firstTrailingBit(595i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f + -2416f)) - -428f)));
}

