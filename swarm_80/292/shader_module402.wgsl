struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(18919u, 15238u, 20776u, 1u);

var<private> global1: u32;

var<private> global2: array<bool, 16> = array<bool, 16>(false, true, true, false, false, false, false, false, true, true, true, true, true, false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    global0 = min(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, u_input.a, _wgslsmith_add_u32(7957u, global0.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, 4294967295u), vec4<u32>(global0.x, u_input.a, global0.x, u_input.a))), 16486u, 0u >> (0u % 32u)), ~(~(vec4<u32>(u_input.a, global0.x, u_input.a, 36545u) & vec4<u32>(0u, 4294967295u, global0.x, 1u))) >> (abs(min(~vec4<u32>(24628u, u_input.a, global0.x, 35159u), abs(vec4<u32>(u_input.b, u_input.a, 1u, u_input.a)))) % vec4<u32>(32u)));
    global0 = _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, global0.x, global0.x, abs(global0.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 23237u, 4294967295u), vec3<u32>(69226u, 28408u, 69009u)) % 32u))), vec4<u32>(abs(~_wgslsmith_div_u32(u_input.a, global0.x)), ~global0.x, ~u_input.b ^ u_input.b, reverseBits(u_input.b)));
    global0 = max(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(global0.x, u_input.a, 43410u, 651u) & vec4<u32>(u_input.a, global0.x, 0u, 1u), abs(vec4<u32>(87848u, global0.x, global0.x, 3656u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(global0.x, global0.x, u_input.a, u_input.b)), global0.x, global0.x, u_input.b)), ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, global0.x, global0.x), vec4<u32>(u_input.a, global0.x, global0.x, global0.x), vec4<u32>(4294967295u, 1u, 83048u, 4294967295u)), vec4<u32>(u_input.b, u_input.a, 4294967295u, global0.x))));
    var var_0 = -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(select(-vec2<i32>(-2147483647i, 0i), -vec2<i32>(-9478i, -2147483647i), select(arg_0.ww, arg_0.zz, arg_0.x)), firstLeadingBit(~vec2<i32>(-2147483647i, 28813i))), vec2<i32>(-1i, -(~2147483647i)));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_vec2_u32(~(~global0.wx), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), global0.zx))), ~max(~abs(4294967295u), ~1u));
    return ~(-abs(~vec3<i32>(var_0.x, 2147483647i, -2147483647i)));
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_3(Struct_1(vec2<u32>(min(~u_input.b, ~57687u), 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, 1u), vec4<u32>(global0.x, global0.x, 4294967295u, u_input.b)) >> (1u % 32u)), Struct_2(~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 13225u, 0u, u_input.b), ~vec4<u32>(global0.x, global0.x, u_input.b, u_input.a)), Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 4294967295u), global0.x)), Struct_1(countOneBits(global0.yx) >> (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), 18662u), vec4<i32>(max(arg_0.x, 15346i), ~(-15657i), 30966i | _wgslsmith_mult_i32(arg_0.x, arg_0.x), arg_0.x));
    global2 = array<bool, 16>();
    var var_1 = _wgslsmith_f_op_f32(-460f * -1000f);
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1026f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-165f * -1127f))) - 603f), any(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 16u)]), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(26381u, 16u)]), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 36799u), 16u)]))));
    var var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(var_0.b.a.zxy), vec3<u32>(global0.x, 4294967295u, _wgslsmith_mult_u32(min(global0.x, 0u), abs(~var_0.b.a.x))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(~firstTrailingBit(0u)), 41014u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(3899u), 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, var_2.x), _wgslsmith_clamp_vec2_u32(var_0.b.a.xz, var_2.zx, var_0.c.a), _wgslsmith_add_vec2_u32(var_0.c.a, vec2<u32>(u_input.a, var_2.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = (vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 105101u), ~1u, min(32665u, u_input.a)), u_input.b, _wgslsmith_add_u32(abs(u_input.b), ~33258u), func_4(func_3(vec4<bool>(true, global2[_wgslsmith_index_u32(54846u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)])))) & ~vec4<u32>(global0.x, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 73115u, 13341u), vec4<u32>(global0.x, 11199u, global0.x, 0u)), _wgslsmith_div_u32(u_input.b, 18442u))) & (~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, u_input.a, 1u, 4294967295u)), ~vec4<u32>(u_input.a, 0u, global0.x, 0u)) & vec4<u32>(~_wgslsmith_mult_u32(1u, 0u), global0.x, global0.x | ~1u, _wgslsmith_add_u32(u_input.a, select(4294967295u, u_input.a, false))));
    let var_1 = !select(select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 16u)], true), vec3<bool>(global2[_wgslsmith_index_u32(47110u, 16u)], global2[_wgslsmith_index_u32(var_0.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), global2[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 0u), 16u)], !global2[_wgslsmith_index_u32(u_input.b, 16u)]), !all(vec4<bool>(true, true, true, true))), !vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 16u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.a, u_input.a)), 16u)]), global2[_wgslsmith_index_u32(1612u, 16u)]);
    let var_2 = _wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(select(-1427f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-838f - _wgslsmith_f_op_f32(f32(-1f) * -709f)))), any(!vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 16u)], true, var_1.x)))));
    global1 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -432f, 724f, var_2) * vec4<f32>(-549f, var_2, -393f, 1167f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(577f, var_2, 1000f, 662f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, var_2, 403f, var_2)), global2[_wgslsmith_index_u32(~1u, 16u)])))) * vec4<f32>(var_2, var_2, -1554f, _wgslsmith_f_op_f32(-910f * _wgslsmith_f_op_f32(-337f * _wgslsmith_f_op_f32(-var_2)))));
    return Struct_2(~(~vec4<u32>(u_input.b, 31624u, var_0.x, 1u)) | var_0, Struct_1(var_0.zz, var_0.x));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_2(~(~(~var_0.a)), var_0.b);
    var var_1 = _wgslsmith_f_op_f32(ceil(367f));
    let var_2 = vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 16u)], !(_wgslsmith_clamp_u32(u_input.b, 43632u, _wgslsmith_clamp_u32(u_input.a, 16120u, 45262u)) <= max(func_2().a.x, select(global0.x, var_0.b.a.x, global2[_wgslsmith_index_u32(32185u, 16u)]))), false, false);
    let var_3 = Struct_2(~var_0.a, Struct_1(~vec2<u32>(countOneBits(u_input.a), ~0u), global0.x));
    return func_2().b;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> bool {
    let var_0 = vec2<i32>(1i, -2147483647i);
    global0 = vec4<u32>(5934u, 52763u, arg_0.b, ~(~(~u_input.b)));
    global1 = ~((countOneBits(func_2().b.a.x) ^ max(1u, firstTrailingBit(arg_1))) & 1u);
    let var_1 = arg_2.x;
    let var_2 = true;
    return !global2[_wgslsmith_index_u32(1u | (arg_1 ^ 1190u), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(u_input.a, ~u_input.b, false);
    let var_0 = select(vec4<bool>(!any(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.x, 16u)])) & true, true, func_5(func_1(), global0.x, select(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 16u)]), vec2<bool>(global2[_wgslsmith_index_u32(941u, 16u)], false)), select(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 16u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(2549u, 16u)]))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), 1u), 16u)]), false), select(select(select(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global0.x, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 16u)], true, true, true)), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(global0.x, 16u)], true), true), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(global0.x, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(0u, 16u)])), vec4<bool>(false || global2[_wgslsmith_index_u32(u_input.b, 16u)], false & global2[_wgslsmith_index_u32(3257u, 16u)], all(vec3<bool>(true, false, false)), global2[_wgslsmith_index_u32(~1u, 16u)])), vec4<bool>(false, global2[_wgslsmith_index_u32(global0.x, 16u)], any(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 16u)], false)), 4431u >= global0.x), false), ~(~u_input.b) >= global0.x);
    global1 = 4294967295u;
    let var_1 = vec4<i32>(~firstTrailingBit(1i) ^ -16501i, ~_wgslsmith_clamp_i32(0i, max(~0i, _wgslsmith_div_i32(-2147483647i, -2147483647i)), 1i >> (select(48706u, 1u, global2[_wgslsmith_index_u32(0u, 16u)]) % 32u)), _wgslsmith_add_i32(-31117i, max(~(-1i), _wgslsmith_div_i32(firstLeadingBit(-24071i), 1i))), ~(-2139i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-512f * -829f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1370f, 282f));
}

