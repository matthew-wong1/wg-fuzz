struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-438i, vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 5792i), vec2<i32>(17683i, -11140i), -125f);

var<private> global1: array<bool, 31>;

var<private> global2: f32 = -717f;

var<private> global3: array<vec4<u32>, 11>;

var<private> global4: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(global0.b), _wgslsmith_div_vec4_i32(vec4<i32>(0i | global0.c.x, 2147483647i, abs(u_input.b), ~global0.b.x), global0.b)), firstTrailingBit(_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-28466i, u_input.d.x, 0i, u_input.c), global0.b), max(~vec4<i32>(u_input.e.x, 0i, global0.c.x, -2147483647i), global0.b))), firstTrailingBit(~global0.c), _wgslsmith_f_op_f32(ceil(398f)));
    var var_1 = var_0;
    global1 = array<bool, 31>();
    return var_1.b.yx;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    let var_0 = all(vec3<bool>(false, true, (u_input.d.x >> (~64270u % 32u)) > -2147483647i));
    global0 = Struct_1(~_wgslsmith_dot_vec2_i32(u_input.d, func_3(!global4.x)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 22404i, global0.b.x), vec3<i32>(arg_2, global0.b.x, -2147483647i)), _wgslsmith_add_i32(global0.a, global0.c.x), -5207i, _wgslsmith_dot_vec2_i32(u_input.d, global0.c)), -vec4<i32>(-2147483647i, 1i, global0.a, arg_2))), u_input.d, global0.d);
    let var_1 = select(~vec3<u32>(~select(0u, u_input.a, true), countOneBits(_wgslsmith_mod_u32(u_input.a, u_input.a)), min(_wgslsmith_mult_u32(u_input.a, 18543u), u_input.a & u_input.a)), vec3<u32>(~1u, 0u, ~(_wgslsmith_div_u32(u_input.a, u_input.a) ^ u_input.a)), !vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 31u)], true, !global1[_wgslsmith_index_u32(abs(0u), 31u)]));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1018f, arg_1.x)), arg_0.x, !(!var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, global0.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1.x, global0.d)), arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -958f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.d, -384f)), -1338f))))));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(global0.b.zz, global0.c), _wgslsmith_div_vec4_i32(countOneBits(abs(global0.b)), vec4<i32>(select(arg_2, -global0.b.x, all(vec3<bool>(true, true, global4.x))), 14592i, -1i, -2147483647i)), u_input.e.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 467f)));
    return u_input.c;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = -374f;
    var var_1 = Struct_1(reverseBits(1i), global0.b, global0.b.xx, var_0);
    global3 = array<vec4<u32>, 11>();
    var var_2 = vec3<i32>(-_wgslsmith_add_i32(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, var_1.d, 961f), vec3<f32>(-572f, 402f, 1031f)), vec2<f32>(139f, 1812f), -1i), 5872i), min(abs(u_input.b), -_wgslsmith_dot_vec3_i32(firstLeadingBit(global0.b.xzz), reverseBits(global0.b.zxz))), ~(2646i >> (1u % 32u)));
    let var_3 = Struct_1(global0.a, countOneBits(select(global0.b, _wgslsmith_mod_vec4_i32(var_1.b, vec4<i32>(u_input.d.x, -2147483647i, u_input.c, global0.b.x)), !global4.x) << (firstLeadingBit(global3[_wgslsmith_index_u32(~21479u, 11u)]) % vec4<u32>(32u))), vec2<i32>(~611i, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.x, -1288f, 133f), vec3<f32>(arg_2.x, var_0, -896f))), vec3<f32>(1048f, -622f, -1772f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1986f, -160f))), 22388i)), _wgslsmith_f_op_f32(var_0 + global0.d));
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, arg_1) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), u_input.d), -countOneBits(var_1.a)) & firstTrailingBit(var_2.x), _wgslsmith_mod_vec4_i32(var_1.b, -select(vec4<i32>(u_input.c, global0.b.x, 29935i, global0.b.x), global0.b, false)) >> (vec4<u32>(~(~u_input.a), _wgslsmith_clamp_u32(~u_input.a, reverseBits(u_input.a), u_input.a), 1u, u_input.a) % vec4<u32>(32u)), ~vec2<i32>(u_input.d.x, var_1.c.x), _wgslsmith_div_f32(-994f, -1000f));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(130f * arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -232f)))), vec2<f32>(arg_3.x, 154f)), arg_3.yx));
    global0 = arg_2;
    let var_1 = vec4<i32>(arg_0.a, arg_0.b.x, global0.c.x, ~u_input.b) << (vec4<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(1u, 18528u))), abs(u_input.a), abs(u_input.a), arg_1) % vec4<u32>(32u));
    let var_2 = func_1(max(~(2147483647i ^ global0.b.x) << (~u_input.a % 32u), ~0i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(max(u_input.b, arg_0.b.x), ~(-62730i), func_2(vec3<f32>(var_0.x, 122f, arg_2.d), var_0, 17215i)) & arg_2.b.x, global0.a, global0.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(arg_3.x - arg_2.d)), var_0, true)))));
    let var_3 = global0.b.wyy;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(global0.a, func_4(func_1(global0.a, u_input.e.x, vec2<f32>(875f, global0.d)), ~1u, Struct_1(1i, vec4<i32>(1i, -1i, -2147483647i, global0.c.x) >> (global3[_wgslsmith_index_u32(4294967295u, 11u)] % vec4<u32>(32u)), vec2<i32>(global0.b.x, u_input.b), 219f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, -152f, 666f) - vec3<f32>(global0.d, -637f, -779f)), vec3<f32>(-2274f, 2204f, global0.d))))), _wgslsmith_sub_vec4_i32(min(-vec4<i32>(-10839i, -30563i, global0.b.x, -2147483647i), _wgslsmith_add_vec4_i32(global0.b, global0.b)) | -(vec4<i32>(u_input.e.x, -111462i, u_input.b, 2147483647i) & vec4<i32>(0i, -1i, -2656i, global0.c.x)), global0.b), global0.c, -1000f);
    var var_1 = ~(_wgslsmith_mod_u32(28767u, 39745u) | _wgslsmith_mult_u32(1u, ~_wgslsmith_mult_u32(u_input.a, 4294967295u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(431f, _wgslsmith_f_op_f32(1658f * -456f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, var_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, global0.d) * vec2<f32>(global0.d, var_0.d))))));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(var_0.c.x, var_0.c.x, var_0.b.x), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(~global0.a, global0.b.x, ~(-1i), 48461i)), firstLeadingBit(vec4<i32>(62i, _wgslsmith_mult_i32(var_0.c.x, -2147483647i), -60210i >> (1u % 32u), 0i))), (var_0.b.yx ^ vec2<i32>(-global0.c.x, var_0.b.x)) ^ var_0.b.yx, _wgslsmith_f_op_f32(f32(-1f) * -534f));
    let var_4 = func_1(global0.c.x ^ var_3.c.x, u_input.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.d, var_0.d), vec2<f32>(global0.d, global0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1225f, -777f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(func_1(u_input.d.x, i32(-1i) * -1i, _wgslsmith_div_vec2_f32(vec2<f32>(-837f, -803f), vec2<f32>(1000f, -710f))).d)), global0.d), global0.b, var_0.d, vec3<f32>(_wgslsmith_f_op_f32(trunc(226f)), var_3.d, 1f));
}

