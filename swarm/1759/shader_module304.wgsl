struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<u32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(max(global2.x, global1.x), _wgslsmith_mod_u32(1u, global1.x), firstLeadingBit(arg_1.b.x), 105669u), vec4<u32>(17102u, ~4294967295u, ~0u, reverseBits(global2.x))));
    global0 = !(!vec3<bool>(arg_1.a, 0u >= min(global1.x, arg_1.c), all(select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, arg_1.a, arg_1.a, global0.x), true))));
    global1 = ~reverseBits(~(arg_1.b | vec4<u32>(1u, arg_1.c, global1.x, global2.x)));
    global2 = _wgslsmith_mod_vec2_u32(~(~arg_1.b.wz), arg_1.b.zx);
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-348f, -122f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1098f * -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-240f + _wgslsmith_f_op_f32(-701f + 204f)), 1567f)), -523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2347f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(109f, -375f), 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1936f * 1453f) - _wgslsmith_f_op_f32(max(1737f, 866f))))), 1f, 202f)));
    return 4294967295u;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> vec2<u32> {
    let var_0 = select(~(~27555u), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(18529u, global1.x), _wgslsmith_clamp_u32(0u, global2.x, global1.x)), !(!(!(!arg_1))));
    var var_1 = ~vec4<u32>(func_3(max(~vec2<i32>(2147483647i, 15444i), abs(vec2<i32>(u_input.a, 37462i))), Struct_1(true, ~vec4<u32>(4294967295u, 0u, global2.x, 116359u), 1u << (global1.x % 32u))), ~53323u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10053u, arg_2, global1.x), vec4<u32>(5845u, global2.x, 1u, 52724u) ^ vec4<u32>(global2.x, 11420u, var_0, arg_2)), global2.x);
    let var_2 = Struct_3(u_input.a, Struct_1(false, ((vec4<u32>(12403u, 20618u, 18259u, 4294967295u) & vec4<u32>(var_1.x, 2690u, 0u, 0u)) << (~vec4<u32>(var_1.x, 15133u, 2962u, 0u) % vec4<u32>(32u))) ^ min(vec4<u32>(53580u, var_1.x, 12677u, 1u), vec4<u32>(39738u, 4294967295u, 4294967295u, global2.x)), 37443u), vec2<bool>(arg_1 & false, any(select(select(global0.zy, global0.zz, vec2<bool>(global0.x, arg_1)), vec2<bool>(arg_1, arg_1), false))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(42535i | u_input.a, ~(-821i), ~0i), -vec3<i32>(2147483647i, u_input.a, -5789i) >> (vec3<u32>(38234u, var_0, 4294967295u) % vec3<u32>(32u))), select(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, 22512i, u_input.a), any(vec4<bool>(global0.x, true, true, true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_1, arg_1, arg_1), arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, true)), !vec3<bool>(true, false, global0.x), !any(vec4<bool>(false, global0.x, global0.x, true)))), u_input.a);
    var var_3 = arg_0;
    let var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_2.e, firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(u_input.a, abs(_wgslsmith_clamp_i32(var_2.e, u_input.a, u_input.a)), (var_2.a | var_2.d.x) << (_wgslsmith_add_u32(global2.x, 1u) % 32u))), ~vec4<i32>(-22864i, ~(~u_input.a), ~var_2.e, -firstLeadingBit(u_input.a)));
    return var_2.b.b.xy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>) -> bool {
    global1 = ~(~(~(~firstTrailingBit(vec4<u32>(global1.x, 4294967295u, 1u, 4294967295u)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(162f, -437f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(333f - 296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1342f)))))) * _wgslsmith_f_op_f32(-1f));
    global1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global2.x & 27539u, global2.x), _wgslsmith_add_u32(~arg_1.x, 33452u), func_3(vec2<i32>(u_input.a, -1i), Struct_1(false, vec4<u32>(global1.x, 0u, global1.x, 44738u), 31823u)), reverseBits(arg_1.x)), vec4<u32>(1u, arg_1.x, _wgslsmith_mult_u32(~global2.x, global2.x), arg_1.x ^ countOneBits(global1.x)));
    var var_1 = ~(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_1.x), arg_1), arg_1 << (select(arg_1, vec2<u32>(global2.x, arg_1.x), arg_0.x) % vec2<u32>(32u))) >> (reverseBits(firstTrailingBit(global1.wz) << (max(vec2<u32>(arg_1.x, global2.x), global1.zz) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return !(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-542f)), _wgslsmith_f_op_f32(select(-740f, 553f, true)), false)) != _wgslsmith_f_op_f32(sign(-941f))));
}

fn func_1() -> i32 {
    global2 = ~(~select(~global1.xy << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), global1.ww, select(global0.xy, select(vec2<bool>(global0.x, false), global0.zy, global0.xx), global0.yx)));
    let var_0 = vec4<u32>(reverseBits(~global1.x), 4294967295u, global2.x, global1.x);
    global1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global2.x, 0u), global1.zwx), 1u, abs(1u), 1u) | select(abs(var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(16251u, 1u, 0u, 71509u), vec4<u32>(global1.x, global1.x, 1u, var_0.x)), vec4<bool>(global0.x, global0.x, false, false)), var_0) | ~select(~var_0, var_0, func_4(select(vec2<bool>(global0.x, true), global0.zy, global0.x), func_2(vec3<f32>(-308f, -1000f, -410f), true, 4294967295u)));
    let var_1 = Struct_3(1i, Struct_1(any(vec2<bool>(true, true)), var_0, 4294967295u), select(global0.zz, select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), global0.yy, vec2<bool>(any(global0.yy), true)), select(global0.xx, global0.yx, !global0.xz)), select(vec3<i32>(~u_input.a, u_input.a, 12765i), firstTrailingBit(max(vec3<i32>(-51256i, -32548i, u_input.a) ^ vec3<i32>(u_input.a, 5182i, 0i), ~vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<bool>(true, global0.x, true)), _wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(u_input.a, -44196i) ^ -1981i));
    var var_2 = ~min(-_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, 1i, var_1.d.x, var_1.d.x)), firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, -1i, 1i))), vec4<i32>(1i, min(-2147483647i, 25706i), u_input.a, ~abs(25213i)));
    return _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(var_1.d.x & 54935i, 6249i)), (10728i >> ((~global2.x << (_wgslsmith_mod_u32(48646u, global2.x) % 32u)) % 32u)) << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(vec2<u32>(4294967295u, global1.x));
    global1 = ~vec4<u32>(1u, 1u, ~(_wgslsmith_dot_vec2_u32(global1.xx, global1.ww) & global1.x), 56686u);
    var var_0 = vec3<i32>(abs(func_1()), u_input.a, (i32(-1i) * -countOneBits(2147483647i)) | firstTrailingBit(2147483647i));
    let var_1 = _wgslsmith_sub_i32((i32(-1i) * -var_0.x) ^ var_0.x, u_input.a) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(global2.x, global2.x, 4294967295u, global1.x)), abs(vec4<u32>(global2.x, 8517u, global1.x, global2.x)) << (firstTrailingBit(vec4<u32>(global1.x, global1.x, 28733u, 0u)) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, global1.x, 4294967295u), vec4<u32>(4294967295u, global2.x, 1u, global1.x)) & (vec4<u32>(global1.x, 30547u, global1.x, 0u) ^ vec4<u32>(34021u, global2.x, global1.x, global2.x)))) % 32u);
    global1 = vec4<u32>(1u, _wgslsmith_add_u32(4294967295u, max(1u, abs(global1.x))), _wgslsmith_dot_vec3_u32(global1.yzw, _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(global1.zww, global1.zww), vec3<u32>(reverseBits(26454u), _wgslsmith_mult_u32(25584u, 1u), global2.x))), _wgslsmith_mult_u32(abs(~global2.x ^ ~1u), func_3(select(max(var_0.xx, vec2<i32>(var_1, -1i)), vec2<i32>(-22164i, 2147483647i), false), Struct_1(true, ~vec4<u32>(global2.x, 1u, 4294967295u, global1.x), global2.x))));
    var var_2 = Struct_3(_wgslsmith_clamp_i32(48804i, ~u_input.a, 54287i) | -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, var_0.x, u_input.a, var_1), vec4<i32>(u_input.a, 2147483647i, var_0.x, -15314i)), ~vec4<i32>(var_1, var_1, var_0.x, var_1)), Struct_1(false, ~(~(~vec4<u32>(74993u, global2.x, 12677u, global2.x))), ~global1.x), select(vec2<bool>(any(vec2<bool>(true, global0.x)), any(vec3<bool>(true, true, true))), vec2<bool>(false, global1.x == 7191u), global1.x <= 4294967295u), ~firstLeadingBit(firstTrailingBit(vec3<i32>(57160i, u_input.a, u_input.a))), var_1);
    var_2 = Struct_3(~_wgslsmith_sub_i32(var_2.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1, -2147483647i) & vec3<i32>(1i, -37411i, -26539i), -var_2.d)), Struct_1(global0.x, abs(var_2.b.b), global2.x & select(global1.x << (1u % 32u), ~57029u, global1.x == 1u)), !select(select(vec2<bool>(false, var_2.c.x), vec2<bool>(global0.x, false), false), var_2.c, vec2<bool>(true, var_2.c.x)), var_2.d ^ vec3<i32>(-12459i ^ u_input.a, var_1, 1i), 1i);
    var var_3 = var_2.b;
    var_2 = Struct_3(abs(var_0.x), Struct_1(var_2.c.x, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 62539u, global1.x, 4294967295u), var_2.b.b)), _wgslsmith_mod_u32(36671u, reverseBits(global1.x))), !vec2<bool>(!(var_2.c.x & var_2.b.a), false), vec3<i32>(-74401i, var_2.e, ~1i), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_2.e, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_1, u_input.a, 0i), vec4<i32>(-2147483647i, -2637i, var_0.x, u_input.a)), vec4<i32>(var_0.x, u_input.a, -var_0.x, var_0.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(43666i, 17611i), vec2<i32>(var_0.x, -45789i)), var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-565f, -137f)));
}

