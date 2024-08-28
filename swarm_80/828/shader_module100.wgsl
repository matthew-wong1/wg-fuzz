struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec4<i32> = vec4<i32>(30425i, 1i, -12684i, -28030i);

var<private> global2: vec3<f32> = vec3<f32>(1000f, -286f, -438f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = global1.x;
    let var_1 = arg_2.b;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a, 39535u)), select(vec2<u32>(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), ~u_input.a), (vec2<u32>(u_input.a, 38442u) | vec2<u32>(u_input.a, 42820u)) & vec2<u32>(u_input.a, 32548u), !vec2<bool>(arg_2.a.x, arg_1.x)))), 12u)];
    var var_3 = Struct_1(arg_2.a, var_2.b << (reverseBits(vec3<u32>(max(u_input.a, u_input.a), u_input.a, _wgslsmith_mult_u32(116097u, 1u))) % vec3<u32>(32u)));
    let var_4 = Struct_1(!vec4<bool>(u_input.a >= ~65701u, true, all(select(vec3<bool>(false, false, arg_2.a.x), var_2.a.zww, vec3<bool>(false, var_3.a.x, true))), !(global2.x < 1215f)), min(vec3<i32>(_wgslsmith_div_i32(min(2147483647i, 1i), var_1.x), select(-31232i, var_1.x, false) ^ _wgslsmith_mod_i32(-19067i, 2147483647i), -firstTrailingBit(16728i)), arg_2.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> i32 {
    global1 = reverseBits(vec4<i32>(global1.x, select(global1.x, (2147483647i >> (arg_2 % 32u)) ^ 0i, true), -1i, -2147483647i));
    let var_0 = !(!(!(!arg_1.a.x)) | any(select(vec2<bool>(arg_1.a.x, arg_1.a.x), select(vec2<bool>(false, true), vec2<bool>(true, arg_1.a.x), arg_1.a.x), arg_1.a.x)));
    let var_1 = Struct_1(vec4<bool>(false, select(var_0, any(vec3<bool>(true, var_0, arg_1.a.x)), true) && all(arg_1.a.yxw), -110f >= arg_3, var_0), vec3<i32>(global1.x, global1.x, _wgslsmith_mod_i32(~(-1i), 1i) & _wgslsmith_div_i32(arg_1.b.x, -1i)));
    global0 = array<Struct_1, 12>();
    let var_2 = Struct_1(!vec4<bool>(true, all(var_1.a), true, _wgslsmith_f_op_f32(arg_3 - 808f) != _wgslsmith_f_op_f32(round(arg_3))), vec3<i32>(-51432i, _wgslsmith_add_i32(max(_wgslsmith_sub_i32(global1.x, -26527i), 1i), ~arg_1.b.x), -15257i));
    return firstTrailingBit(-(_wgslsmith_dot_vec2_i32(-var_2.b.zy, vec2<i32>(0i, var_2.b.x)) << (~abs(20454u) % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    global1 = select(-vec4<i32>(func_4(~vec4<u32>(arg_3.x, 671u, arg_3.x, u_input.a), arg_1, u_input.a, _wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, global1.x), vec3<bool>(false, arg_1.a.x, arg_1.a.x), Struct_1(vec4<bool>(arg_1.a.x, arg_0.a.x, true, true), vec3<i32>(arg_0.b.x, -1i, global1.x))))), -2147483647i, abs(abs(1i)), var_0.b.x), reverseBits(vec4<i32>(_wgslsmith_mod_i32(global1.x >> (22506u % 32u), select(12568i, var_0.b.x, arg_1.a.x)), ~(-global1.x), _wgslsmith_div_i32(abs(-2147483647i), global1.x >> (arg_3.x % 32u)), select(i32(-1i) * -2147483647i, global1.x, true))), arg_1.a.x);
    global2 = vec3<f32>(305f, arg_2, -102f);
    let var_1 = true;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1035f, global2.x, -713f)) - vec3<f32>(_wgslsmith_f_op_f32(arg_2 * global2.x), _wgslsmith_f_op_f32(-1492f - global2.x), arg_2)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-153f, _wgslsmith_f_op_f32(trunc(-984f)), 1000f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1544f, global2.x) - vec3<f32>(arg_2, -1097f, global2.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, global2.x, 1000f))))))));
    return select(countOneBits(var_0.b.x), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b.x, 0i, global1.x, 2147483647i) ^ ~vec4<i32>(var_0.b.x, -2147483647i, var_0.b.x, global1.x), ~(-vec4<i32>(global1.x, global1.x, 13699i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 812f) * 807f)) < _wgslsmith_f_op_f32(floor(global2.x)));
}

fn func_1() -> vec4<i32> {
    global1 = vec4<i32>(abs(0i), abs(~func_2(global0[_wgslsmith_index_u32(12222u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], -1037f, ~vec2<u32>(u_input.a, 38484u))), -21635i, global1.x ^ global1.x);
    global1 = countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-37658i, global1.x, -2147483647i, -1i), vec4<i32>(-4447i, global1.x, 22552i, global1.x)) ^ ~global1.x, ~(~(-2147483647i)), 1i, 37631i)) & -_wgslsmith_mult_vec4_i32(vec4<i32>(-12051i, global1.x, global1.x, global1.x), ~(vec4<i32>(global1.x, global1.x, 2147483647i, global1.x) | vec4<i32>(global1.x, global1.x, global1.x, global1.x)));
    var var_0 = ~4294967295u == u_input.a;
    var var_1 = -vec2<i32>(global1.x << (_wgslsmith_sub_u32(~u_input.a, 1u) % 32u), 1i);
    var var_2 = _wgslsmith_clamp_vec3_i32(global1.zwz, ~global1.yzx, global1.wyz) ^ ~vec3<i32>(countOneBits(global1.x) | _wgslsmith_mod_i32(var_1.x, var_1.x), select(var_1.x, firstLeadingBit(global1.x), true), ~global1.x | 2320i);
    return (vec4<i32>(-1i) * -firstLeadingBit(~vec4<i32>(global1.x, var_2.x, 2147483647i, var_2.x))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(41189u, u_input.a, 34283u, 73208u) % vec4<u32>(32u))) | max(reverseBits(vec4<u32>(u_input.a, u_input.a, 37332u, u_input.a)), vec4<u32>(1u, u_input.a, 0u, 5733u)), vec4<u32>(u_input.a & ~u_input.a, ~u_input.a, ~1u, _wgslsmith_mod_u32(u_input.a, 39787u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -func_1();
    var var_0 = _wgslsmith_clamp_vec4_u32(select(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u) & vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), ~vec4<u32>(1u, u_input.a, 1u, u_input.a), vec4<u32>(46920u, 4294967295u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, 53548u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 18934u, 4294967295u, u_input.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, firstLeadingBit(u_input.a), u_input.a >> (4294967295u % 32u)), vec4<u32>(~48935u, countOneBits(4294967295u), ~u_input.a, u_input.a >> (20027u % 32u))), !any(vec4<bool>(true, true, true, true))), vec4<u32>(1u, u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(u_input.a, u_input.a))) << (((_wgslsmith_mult_vec4_u32(vec4<u32>(63727u, u_input.a, 785u, u_input.a), vec4<u32>(4294967295u, u_input.a, 75457u, u_input.a)) ^ (vec4<u32>(26176u, 0u, 48955u, 4294967295u) ^ vec4<u32>(u_input.a, 15885u, u_input.a, 1u))) & _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 79965u, 1u, 0u), vec4<u32>(0u, 64209u, u_input.a, 78470u)), ~vec4<u32>(u_input.a, u_input.a, 54905u, 4294967295u))) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(_wgslsmith_mod_u32(1u, 63174u), u_input.a | u_input.a, _wgslsmith_mod_u32(4294967295u, 78011u), u_input.a)));
    let var_1 = i32(-1i) * -2147483647i;
    var_0 = max(vec4<u32>(u_input.a, abs(var_0.x), ~1u >> (_wgslsmith_dot_vec2_u32(~var_0.yw, var_0.zw) % 32u), var_0.x), countOneBits(abs(~max(vec4<u32>(var_0.x, 0u, 0u, var_0.x), vec4<u32>(28924u, 44542u, var_0.x, u_input.a)))));
    var var_2 = 17554u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1376f)) + _wgslsmith_f_op_f32(step(global2.x, global2.x)))), global2.x), vec3<i32>(-25656i, ~var_1, global1.x), ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 47807u), _wgslsmith_dot_vec3_u32(var_0.yyx, vec3<u32>(var_0.x, 36860u, u_input.a))), u_input.a, ~(var_0.x ^ var_0.x), _wgslsmith_mult_u32(0u ^ var_0.x, u_input.a)), var_0.x & u_input.a, vec3<i32>(-1i) * -global1.zxz);
}

