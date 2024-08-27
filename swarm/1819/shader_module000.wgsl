struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), 2147483647i, -28690i, 2147483647i, 0i, i32(-2147483648), 1i, 2147483647i);

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 17> = array<u32, 17>(55963u, 1u, 1747u, 315u, 29112u, 1539u, 4294967295u, 1u, 1u, 4294967295u, 70290u, 15079u, 0u, 6911u, 52349u, 0u, 1u);

var<private> global3: vec2<f32>;

var<private> global4: array<Struct_3, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-global3.x);
    let var_1 = u_input.a.x;
    let var_2 = 4294967295u;
    let var_3 = Struct_4(Struct_3(Struct_1(false, max(firstTrailingBit(var_1), global0[_wgslsmith_index_u32(var_2, 8u)]), _wgslsmith_sub_vec2_u32(~global1.ww, max(vec2<u32>(global1.x, global2[_wgslsmith_index_u32(0u, 17u)]), vec2<u32>(4294967295u, var_2))), global1.xy, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))), 25642u, u_input.a, _wgslsmith_div_u32(1u, arg_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-335f))))));
    var_0 = var_3.a.e;
    return abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(abs(~var_2), 8u)], -_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.yx)), -7248i));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: i32) -> bool {
    global2 = array<u32, 17>();
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 31012i), 2147483647i);
    global0 = array<i32, 8>();
    var var_1 = Struct_5(arg_2.a, Struct_2(Struct_1(arg_2.a.a.e, -func_3(vec3<f32>(arg_2.a.e, arg_2.a.e, global3.x), 4294967295u, vec2<f32>(arg_2.a.e, 1877f)), ~arg_2.a.a.d, arg_2.a.a.d, all(vec3<bool>(arg_2.a.a.e, arg_2.a.a.a, true))), vec4<i32>(6820i, _wgslsmith_div_i32(u_input.a.x, max(arg_2.a.a.b, -3763i)), min(var_0, 17432i) << (_wgslsmith_sub_u32(6859u, arg_2.a.d) % 32u), ~_wgslsmith_dot_vec2_i32(arg_2.a.c.zy, u_input.a.zx))));
    let var_2 = Struct_3(var_1.b.a, ~countOneBits(_wgslsmith_mod_u32(~83525u, ~104373u)), abs(vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 8u)], -11132i, -1i)), countOneBits(firstTrailingBit(~arg_0 ^ _wgslsmith_mod_u32(arg_2.a.b, 10962u))), var_1.a.e);
    return false;
}

fn func_4(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_4(Struct_3(Struct_1(func_2(11119u, vec2<bool>(arg_0.x, true), Struct_4(global4[_wgslsmith_index_u32(global1.x, 13u)]), i32(-1i) * -2147483647i), -select(0i, u_input.a.x, arg_0.x), min(_wgslsmith_sub_vec2_u32(global1.yz, vec2<u32>(0u, 30775u)), _wgslsmith_add_vec2_u32(vec2<u32>(62378u, 1u), global1.xx)), firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(10207u, 17u)], 54180u)) | _wgslsmith_clamp_vec2_u32(global1.zx, vec2<u32>(1u, global1.x), vec2<u32>(global1.x, global2[_wgslsmith_index_u32(83260u, 17u)])), true), global2[_wgslsmith_index_u32(4294967295u, 17u)], ~vec3<i32>(5462i, 31781i, 1i), _wgslsmith_mult_u32(reverseBits(~global1.x), 34295u), global3.x));
    var_0 = Struct_4(Struct_3(Struct_1(arg_0.x && (25558u >= global2[_wgslsmith_index_u32(var_0.a.d, 17u)]), global0[_wgslsmith_index_u32(var_0.a.a.c.x, 8u)], abs(vec2<u32>(1u, global2[_wgslsmith_index_u32(43865u, 17u)])) ^ vec2<u32>(var_0.a.d, 8875u), ~(~vec2<u32>(global1.x, 40889u)), true), min(global1.x, 1u), vec3<i32>(1i, -49867i >> (min(107766u, var_0.a.a.c.x) % 32u), _wgslsmith_mult_i32(~(-18071i), u_input.a.x >> (21418u % 32u))), firstLeadingBit(abs(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(15456u, 17u)], global1.x))), _wgslsmith_f_op_f32(-555f * var_0.a.e)));
    var var_1 = vec3<f32>(var_0.a.e, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1733f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(356f, 192f), _wgslsmith_f_op_f32(1000f * var_0.a.e))) * global3.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(576f, 1810f, -1109f))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, var_0.a.e)), _wgslsmith_f_op_f32(step(-795f, global3.x)), var_0.a.e)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(max(-453f, _wgslsmith_f_op_f32(round(global3.x))))), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -421f), 1543f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.e))))));
    var var_2 = global4[_wgslsmith_index_u32(var_0.a.a.c.x, 13u)];
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 1u), min(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.x, ~62957u), _wgslsmith_clamp_u32(57362u, abs(var_2.d), 1u)), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(~(~42189u), 17u)], global1.x, 4294967295u)), 1u);
}

fn func_1() -> u32 {
    var var_0 = vec2<bool>(true, any(select(vec3<bool>(true, all(vec2<bool>(true, false)), false), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(12216u, 8u)] <= u_input.a.x, true, true))));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1438f)))), global3.x);
    return abs(func_4(vec4<bool>(func_2(reverseBits(4294967295u), !vec2<bool>(false, var_0.x), Struct_4(Struct_3(Struct_1(false, 31638i, global1.yz, global1.zw, false), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], u_input.a, 0u, global3.x)), _wgslsmith_sub_i32(-19520i, 30738i)), !any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    let var_0 = select(func_1(), reverseBits(func_4(vec4<bool>(global0[_wgslsmith_index_u32(33200u, 8u)] <= 2147483647i, false, all(vec4<bool>(false, false, true, false)), true))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
    global2 = array<u32, 17>();
    global0 = array<i32, 8>();
    let var_1 = Struct_5(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(abs(global1.x) & global2[_wgslsmith_index_u32(~34538u, 17u)], 1u), ~44870u), 13u)], Struct_2(Struct_1(all(vec2<bool>(true, false)), ~(-26443i), vec2<u32>(0u, ~var_0), ~(~global1.xw), false), _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global1.x, 8u)])), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 23787i, u_input.a.x), vec4<i32>(-78673i, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 17u)], 8u)])))));
    let var_2 = var_1.a;
    global2 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(var_1.b.b | vec4<i32>(0i, var_1.a.a.b, var_2.c.x, u_input.a.x))), -min(var_1.b.b ^ var_1.b.b, ~var_1.b.b), vec4<bool>(any(vec3<bool>(true, false, var_1.b.a.a)), !(var_2.a.a != false), true, var_2.a.e)), abs(vec3<i32>(-2147483647i >> (firstTrailingBit(1u) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_2.b, 29142u), 4294967295u), 8u)], -1i)), vec2<i32>(_wgslsmith_mult_i32(var_1.a.a.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.b, global0[_wgslsmith_index_u32(0u, 8u)], var_1.b.a.b), u_input.a), 4732i, -u_input.a.x)), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(), ~45463u), 8u)], _wgslsmith_add_i32(var_1.b.a.b, _wgslsmith_dot_vec3_i32(var_1.a.c, vec3<i32>(24480i, u_input.a.x, 17764i))))), -((select(vec2<i32>(-1i, -1i), vec2<i32>(var_1.a.a.b, 20912i), vec2<bool>(var_2.a.a, false)) << (vec2<u32>(76163u, 20575u) % vec2<u32>(32u))) << (vec2<u32>(global2[_wgslsmith_index_u32(4294967295u | var_1.a.b, 17u)], _wgslsmith_add_u32(var_1.b.a.d.x, 4294967295u)) % vec2<u32>(32u))));
}

