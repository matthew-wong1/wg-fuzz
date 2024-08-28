struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: vec2<f32>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global3 = Struct_1(select(global3.a, vec4<u32>(~4294967295u, 0u, min(~global3.a.x, 4294967295u), max(u_input.c.x, max(global3.a.x, 53141u))), !select(!vec4<bool>(arg_1, global2.x, global2.x, arg_1), select(vec4<bool>(true, arg_1, global2.x, false), vec4<bool>(false, true, false, arg_1), vec4<bool>(true, false, global2.x, arg_1)), !vec4<bool>(false, false, global2.x, true))), reverseBits(u_input.b.x));
    global3 = Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(abs(u_input.c.x) ^ min(u_input.c.x, _wgslsmith_add_u32(20148u, global3.a.x)), 19u)], ~(~45393u & global3.a.x), 1u, ~(~global3.a.x)), 50714i);
    var var_0 = !global2.xz;
    global0 = array<u32, 19>();
    var var_1 = min(-(~_wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(-2338i, 0i, 40803i, u_input.b.x))), vec4<i32>(global3.b << (_wgslsmith_clamp_u32(22908u, 37041u, u_input.a) % 32u), arg_2.x, arg_2.x, abs(4180i))) << (~(~(~vec4<u32>(global3.a.x, 8859u, global3.a.x, 0u))) % vec4<u32>(32u));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global0[_wgslsmith_index_u32(16021u, 19u)], 47372u)), firstLeadingBit(~vec2<u32>(global3.a.x, global3.a.x))), u_input.a);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = vec4<u32>(~_wgslsmith_clamp_u32(min(global0[_wgslsmith_index_u32(4477u, 19u)] & 0u, _wgslsmith_mod_u32(var_1.a.x, 0u)), ~func_3(vec3<f32>(global1.x, global1.x, 803f), false, vec4<i32>(-2147483647i, var_1.b, var_0.b, global3.b)), global3.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u ^ abs(u_input.a), u_input.c.x, firstLeadingBit(_wgslsmith_mult_u32(arg_1.a.x, 1u))), (abs(global3.a.xyz) << (global3.a.wyz % vec3<u32>(32u))) | ~vec3<u32>(arg_0, u_input.c.x, global3.a.x)), 4294967295u, abs(_wgslsmith_sub_u32(countOneBits(arg_0), 54289u)));
    var var_3 = -_wgslsmith_clamp_i32(var_0.b, var_1.b, global3.b);
    var var_4 = select(select(~vec2<u32>(24951u, global0[_wgslsmith_index_u32(4294967295u, 19u)]) ^ abs(var_1.a.ww), ~var_2.zx, !(!global2.xy)) & ~_wgslsmith_sub_vec2_u32(u_input.c & vec2<u32>(arg_1.a.x, arg_0), var_0.a.yz), vec2<u32>(abs(u_input.a), arg_0), vec2<bool>(!global2.x, all(select(!vec3<bool>(global2.x, true, true), vec3<bool>(false, true, false), !vec3<bool>(global2.x, true, true)))));
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global3 = arg_0;
    var var_0 = 97034u;
    global1 = vec2<f32>(199f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x)))));
    var_0 = 0u << (_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, ~abs(arg_0.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(func_2(global3.a.x, Struct_1(vec4<u32>(104329u, global0[_wgslsmith_index_u32(u_input.a, 19u)], arg_0.a.x, u_input.a), 41702i)), global0[_wgslsmith_index_u32(min(6401u, arg_0.a.x), 19u)], 6562u), 19u)]) % 32u);
    var var_1 = Struct_1(min(firstTrailingBit(vec4<u32>(~14240u, arg_0.a.x, firstLeadingBit(global0[_wgslsmith_index_u32(global3.a.x, 19u)]), 113693u)), vec4<u32>(36526u, ~(~arg_0.a.x), firstTrailingBit(~arg_0.a.x), u_input.a)), _wgslsmith_dot_vec3_i32((vec3<i32>(global3.b, -23927i, u_input.b.x) >> (vec3<u32>(u_input.c.x, 0u, arg_0.a.x) % vec3<u32>(32u))) & vec3<i32>(-1i, arg_0.b, 102964i), -abs(u_input.b)) >> (global3.a.x % 32u));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global2.x & select(true, global2.x, !global2.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 875f) - _wgslsmith_f_op_f32(420f - global1.x))) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, -898f), true)), _wgslsmith_div_f32(1000f, global1.x));
    var var_2 = 1378u < global3.a.x;
    let var_3 = vec2<bool>(true, all(vec4<bool>(true, _wgslsmith_f_op_f32(exp2(global1.x)) >= var_1.x, any(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_f_op_f32(-var_1.x) > var_1.x)));
    var var_4 = select(vec4<bool>(var_3.x, var_3.x, global2.x, all(vec4<bool>(any(var_3), !global2.x, var_3.x, true))), vec4<bool>(all(select(!vec2<bool>(true, var_3.x), var_3, global2.zx)), false & (!var_3.x | !var_3.x), true, true | (arg_1 > func_1(arg_2, u_input.b.zz).a.x)), var_3.x);
    return Struct_1(global3.a, _wgslsmith_add_i32(-9478i, -firstTrailingBit(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(firstLeadingBit(global3.a), global3.a & (vec4<u32>(global3.a.x, global3.a.x, global3.a.x, u_input.a) >> (~vec4<u32>(30729u, 21648u, 9510u, 79895u) % vec4<u32>(32u)))), -(~u_input.b.x));
    var var_1 = func_4(func_1(Struct_1(~vec4<u32>(1u, u_input.a, 0u, var_0.a.x), 1i), ~vec2<i32>(-1i >> (u_input.a % 32u), 54914i)), _wgslsmith_div_u32(~0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_2(4294967295u, func_1(Struct_1(global3.a, global3.b), u_input.b.xy)), 19u)], 19u)]), Struct_1(select(~_wgslsmith_mod_vec4_u32(global3.a, global3.a), global3.a, !(!global2.x)), global3.b));
    let var_2 = Struct_1(select(vec4<u32>(~13700u, func_2(var_0.a.x, func_4(Struct_1(vec4<u32>(60880u, var_0.a.x, u_input.c.x, global0[_wgslsmith_index_u32(1u, 19u)]), -20212i), 0u, Struct_1(var_0.a, -6543i))), 0u, 22905u), ~(~(~var_0.a)), global2.x), select(_wgslsmith_add_i32(u_input.b.x, -75750i), 32555i, true));
    var var_3 = ~_wgslsmith_dot_vec2_u32(var_1.a.zx, abs(firstTrailingBit(var_1.a.zw & u_input.c)));
    var var_4 = false;
    let var_5 = var_2;
    var_0 = var_2;
    var_1 = var_2;
    var var_6 = 48597u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)), _wgslsmith_f_op_f32(min(109f, global1.x)), global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(342f, 2036f, global1.x, 2822f) + vec4<f32>(global1.x, global1.x, -763f, -1685f))))), _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_5.a.x, 63609u), vec3<u32>(52897u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 19u)], 19u)], 8217u))), abs(~global3.a.xzy)) & _wgslsmith_mod_vec3_u32(firstTrailingBit(abs(vec3<u32>(var_2.a.x, global0[_wgslsmith_index_u32(var_2.a.x, 19u)], 1u))), vec3<u32>(~var_1.a.x, _wgslsmith_mod_u32(var_2.a.x, var_2.a.x), ~0u)));
}

