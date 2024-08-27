struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, true, -132f, vec3<i32>(5569i, 2147483647i, -1i), vec3<i32>(1i, -1i, 33511i));

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_1 = Struct_1(-1000f, true, -1047f, vec3<i32>(i32(-2147483648), 30726i, 17495i), vec3<i32>(2147483647i, -1i, 1i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 21u)];
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    return func_2(~vec2<i32>(2147483647i, -33527i));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = func_3(func_2(select(vec2<i32>(~3065i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, 0i, 12347i), vec3<i32>(global2.d.x, u_input.a.x, 1i))), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e.x, -5905i, global0.d.x, u_input.c), vec4<i32>(2147483647i, global0.e.x, 2147483647i, 2147483647i))), any(vec3<bool>(true, global0.b, false)))));
    global2 = func_2(u_input.a.zz);
    var var_1 = select(reverseBits(abs(reverseBits(max(vec4<u32>(u_input.b, 4294967295u, 59613u, 1u), vec4<u32>(u_input.b, u_input.b, 1u, 24517u))))), vec4<u32>(_wgslsmith_div_u32(u_input.b, 1u), 4294967295u, 52048u, _wgslsmith_mult_u32(18217u, _wgslsmith_sub_u32(~u_input.b, firstLeadingBit(33127u)))), vec4<bool>(global2.b, true || !global2.b, any(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, global0.b), true)), true));
    let var_2 = 389f;
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -179f), global2.b, _wgslsmith_div_f32(-628f, -362f), vec3<i32>(_wgslsmith_add_i32(global0.e.x, 1i) | min(-1i, 6439i), reverseBits(_wgslsmith_div_i32(-19265i, -42570i)), abs(-1i)) >> (~select(vec3<u32>(var_1.x, 8680u, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 21795u), vec3<u32>(25547u, var_1.x, 29290u)), select(vec3<bool>(global0.b, true, false), vec3<bool>(false, true, false), vec3<bool>(var_0.b, global2.b, true))) % vec3<u32>(32u)), min(reverseBits(countOneBits(~var_0.e)), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(-28434i, u_input.a.x, u_input.c), global2.e) & vec3<i32>(-4870i, -4326i, u_input.a.x))));
    return reverseBits(vec2<i32>(global2.d.x, -26261i));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global0.e, countOneBits(~vec3<i32>(arg_0.x, 0i, 0i))) << (~(~vec3<u32>(arg_1, 37072u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, 40894i, 0i), vec4<i32>(arg_0.x, arg_0.x, -3405i, global0.d.x)), _wgslsmith_clamp_i32(u_input.c, 2147483647i, -26245i)), 1i, global0.e.x));
    global2 = func_2(arg_0);
    var var_1 = _wgslsmith_div_i32(-2147483647i, -8806i);
    global0 = func_2(max(vec2<i32>(32523i, func_3(Struct_1(-893f, global0.b, global2.c, var_0, vec3<i32>(u_input.c, -4956i, 2147483647i))).e.x), vec2<i32>(global2.e.x, global2.e.x)));
    global2 = func_3(func_3(func_2(vec2<i32>(max(0i, arg_0.x), abs(21824i)))));
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 1u) >> (vec2<u32>(arg_1, u_input.b) % vec2<u32>(32u)), ~vec2<u32>(arg_1, 4294967295u))) >> ((firstTrailingBit(~vec2<u32>(29815u, 17746u)) >> (~vec2<u32>(32051u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), ~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 34109u) & vec2<u32>(arg_1, 0u), vec2<u32>(39889u, 51380u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(firstLeadingBit(func_4(func_1(_wgslsmith_div_f32(global0.a, global0.c)), 1u, u_input.b > ~0u, !select(vec4<bool>(global0.b, true, true, true), vec4<bool>(global0.b, global0.b, global0.b, true), vec4<bool>(true, true, false, true))) >> (_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(104785u, 0u, u_input.b), vec3<u32>(1324u, 4294967295u, u_input.b)), 102515u) % 32u)), 21u)];
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 301f), -_wgslsmith_sub_vec3_i32(vec3<i32>(~(-3057i), 1i, _wgslsmith_clamp_i32(-1i, 2147483647i, global2.e.x)), u_input.a), _wgslsmith_sub_vec3_i32(-max(vec3<i32>(u_input.c, global2.e.x, global0.e.x), _wgslsmith_clamp_vec3_i32(global2.e, vec3<i32>(global2.d.x, global0.e.x, 5016i), u_input.a)), vec3<i32>(reverseBits(~global2.d.x), ~_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(global2.e.x, 2147483647i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-9539i, -9786i, 44451i, 2147483647i)), ~vec4<i32>(0i, global2.e.x, global0.d.x, global2.d.x)))));
    let var_1 = select(vec4<u32>(_wgslsmith_sub_u32(countOneBits(u_input.b), 1u), u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 27926u, 23294u, 0u) & vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), _wgslsmith_add_u32(u_input.b, ~(u_input.b >> (40399u % 32u)))), select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(77942u, u_input.b, u_input.b, u_input.b), min(vec4<u32>(40229u, 4294967295u, 68727u, u_input.b), vec4<u32>(4294967295u, 33049u, 0u, u_input.b))), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.b, 23798u, 4294967295u, 23088u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(47273u, u_input.b, u_input.b, 47384u), vec4<u32>(10737u, u_input.b, u_input.b, u_input.b)), global0.b), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(71480u, u_input.b, 40247u, u_input.b) & vec4<u32>(7544u, u_input.b, u_input.b, 4294967295u), ~vec4<u32>(u_input.b, u_input.b, 34446u, u_input.b)), max(~vec4<u32>(u_input.b, u_input.b, 12115u, u_input.b), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))), vec4<bool>(true, (u_input.b >> (1467u % 32u)) != 4294967295u, true, global2.b)), select(select(vec4<bool>(true, true, var_0.b && false, global2.e.x > var_0.e.x), !(!vec4<bool>(false, global2.b, true, true)), vec4<bool>(any(vec2<bool>(global0.b, true)), global2.b, true, true)), vec4<bool>(false || func_2(vec2<i32>(23270i, var_0.e.x)).b, global2.b, !(0u < u_input.b), global0.b), global0.b));
    global1 = array<Struct_1, 21>();
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)))), 375f), !(all(!vec2<bool>(global2.b, global0.b)) && var_0.b), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, global2.c))) - _wgslsmith_f_op_f32(-2229f - _wgslsmith_f_op_f32(473f * 1878f)))), _wgslsmith_mult_vec3_i32(select(~vec3<i32>(-4045i, global0.e.x, 6788i), _wgslsmith_sub_vec3_i32(vec3<i32>(41395i, 22811i, global2.e.x) << (vec3<u32>(u_input.b, u_input.b, var_1.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(global0.d, var_0.e, vec3<i32>(u_input.c, var_0.e.x, -51278i))), global2.b), vec3<i32>(~_wgslsmith_div_i32(1i, 1i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.x, 45299i, 3360i, 6083i), vec4<i32>(-27791i, -13069i, u_input.a.x, u_input.c))), (global2.d.x & global2.d.x) ^ firstTrailingBit(-1i))), max(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(global0.e.x, 40596i), select(u_input.a.x, u_input.c, global2.b), global0.d.x)), (_wgslsmith_mult_vec3_i32(vec3<i32>(23101i, global0.e.x, global2.e.x), vec3<i32>(u_input.a.x, global0.e.x, -1i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.x, 16044u), var_1.zwy) % vec3<u32>(32u))) & u_input.a));
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~var_0.d.zx).d.x & ~(~_wgslsmith_mod_i32(var_0.e.x, -1i)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.c + -1279f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1217f, 1684f, var_2.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(808f, 1355f, 1314f, var_2.c))) - vec4<f32>(1145f, _wgslsmith_f_op_f32(step(-161f, -626f)), _wgslsmith_f_op_f32(1049f - -758f), -857f))), reverseBits(8511u));
}

