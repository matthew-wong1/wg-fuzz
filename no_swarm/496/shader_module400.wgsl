struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, -2531i, 2147483647i), false, vec2<i32>(0i, 1i), vec3<f32>(406f, 945f, 1047f), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: array<i32, 21>;

var<private> global2: array<Struct_1, 23>;

var<private> global3: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(0u, 21u)] >> (global3.x % 32u), global1[_wgslsmith_index_u32(u_input.a, 21u)], -65562i, 1i), countOneBits(-vec4<i32>(1720i, global0.c.x, global0.a.x, global1[_wgslsmith_index_u32(11832u, 21u)]))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(max(countOneBits(global0.a), min(global0.a, vec3<i32>(var_0, global1[_wgslsmith_index_u32(0u, 21u)], -2147483647i))), select(global0.a, ~vec3<i32>(23169i, var_0, 11359i), vec3<bool>(true, true, true))), i32(-1i) * -2147483647i, _wgslsmith_add_i32(-abs(global1[_wgslsmith_index_u32(arg_0, 21u)]), -(~var_0))), true, abs(global0.c), _wgslsmith_f_op_vec3_f32(global0.d - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_div_vec3_f32(global0.d, vec3<f32>(-513f, global0.d.x, global0.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1269f)), global0.d.x, _wgslsmith_f_op_f32(-global0.d.x)))), vec2<u32>(global0.e.x, firstTrailingBit(u_input.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.d.x, 229f))) * _wgslsmith_f_op_vec3_f32(min(var_1.d, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.d.x, var_1.d.x, var_1.d.x), var_1.d))))), global0.d, any(select(!vec3<bool>(true, global0.b, false), select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(false, false, true)), !vec3<bool>(var_1.b, var_1.b, true))))), vec3<f32>(var_1.d.x, -185f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-594f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.d.x))))))), !vec3<bool>(true, !any(vec4<bool>(var_1.b, global0.b, var_1.b, var_1.b)), var_1.b)));
    let var_3 = Struct_1(-var_1.a, false, global0.a.zz, var_1.d, global3.yz);
    var var_4 = Struct_1(var_3.a, global0.b, abs(vec2<i32>(global1[_wgslsmith_index_u32(global0.e.x << (1u % 32u), 21u)], countOneBits(global1[_wgslsmith_index_u32(var_3.e.x, 21u)]))) >> ((vec2<u32>(~global3.x, 4294967295u) >> (var_1.e % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.d.x - var_3.d.x))), _wgslsmith_f_op_f32(select(2343f, _wgslsmith_f_op_f32(-1187f * 1000f), u_input.a > 17547u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d.x))))), ~select(var_3.e, ~firstLeadingBit(var_3.e), !select(vec2<bool>(global0.b, var_3.b), vec2<bool>(false, true), vec2<bool>(false, global0.b))));
    return vec4<bool>(var_4.b, true, true, global0.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = !(global0.b || !any(func_3(121180u)));
    var var_1 = firstTrailingBit(32491u) >> (firstTrailingBit(firstTrailingBit(global0.e.x)) % 32u);
    var var_2 = global2[_wgslsmith_index_u32(~4294967295u, 23u)];
    var var_3 = ~(-min(abs(vec4<i32>(var_2.c.x, 14724i, -2147483647i, global0.a.x)), ~select(vec4<i32>(-36888i, var_2.c.x, 0i, -12403i), vec4<i32>(global0.c.x, 1i, -19735i, var_2.a.x), vec4<bool>(arg_0.x, arg_0.x, arg_2.x, global0.b))));
    var_0 = !(global0.b || (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1152f, var_2.d.x)))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-861f * global0.d.x)))));
    return (countOneBits(firstLeadingBit(abs(vec4<u32>(4294967295u, 1u, 0u, 10659u)))) | vec4<u32>(firstTrailingBit(global3.x) | var_2.e.x, ~_wgslsmith_div_u32(41433u, u_input.a), u_input.a & var_2.e.x, 1u)) << (~(~reverseBits(select(vec4<u32>(51413u, u_input.a, u_input.a, global0.e.x), vec4<u32>(4294967295u, 3629u, u_input.a, 1u), true))) % vec4<u32>(32u));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = true;
    let var_1 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0, arg_0)), 44434u, _wgslsmith_div_u32(arg_0, 0u), global0.e.x), vec4<u32>(1u, arg_0, 1u, 4294967295u)), func_4(func_3(~4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -689f, global0.d.x)), vec4<bool>(global0.b | true, func_3(u_input.a).x, global0.b, any(vec4<bool>(global0.b, true, true, false))))), 29712u, 78485u);
    var var_2 = Struct_1(vec3<i32>(global0.a.x, global0.c.x, firstTrailingBit(-select(0i, global1[_wgslsmith_index_u32(global3.x, 21u)], global0.b))), !(!global0.b), global0.c, global0.d, vec2<u32>(global3.x, arg_0 ^ ((u_input.a & 49593u) ^ _wgslsmith_clamp_u32(0u, 40747u, var_1.x))));
    let var_3 = !select(vec3<bool>(var_2.b, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_2.e.x == 9379u, false, select(var_2.b, global0.b, global0.b)), firstLeadingBit(global3.x) > var_2.e.x), vec3<bool>(!global0.b & var_2.b, 61731u != _wgslsmith_div_u32(31222u, arg_0), false));
    var var_4 = Struct_1((~_wgslsmith_sub_vec3_i32(var_2.a, vec3<i32>(18418i, global1[_wgslsmith_index_u32(0u, 21u)], -2147483647i)) << (global3.wxx % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(16276u, ~1u, 4294967295u), var_1.xyz) % vec3<u32>(32u)), (!(!global0.b) == true) && select(!var_2.b, true, select(true, all(vec4<bool>(true, true, var_3.x, var_2.b)), var_3.x)), global0.a.xz, var_2.d, global3.yz);
    return ~abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(min(0u, 15448u), global0.e.x), _wgslsmith_add_u32(33382u ^ u_input.a, u_input.a)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-881f)), -1788f, global0.d.x);
    global3 = vec4<u32>(max(func_2(arg_0) ^ ~global0.e.x, 50879u) << (~(~_wgslsmith_sub_u32(20440u, global0.e.x)) % 32u), _wgslsmith_clamp_u32(1u, ~_wgslsmith_sub_u32(global3.x, ~0u), 1u), select(global0.e.x, 7522u, true) | ~arg_0, u_input.a);
    let var_1 = vec4<u32>(~arg_0, 1u, reverseBits(global0.e.x), ~1u);
    var var_2 = 37861u;
    global0 = global2[_wgslsmith_index_u32(global3.x, 23u)];
    return var_1.x;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = max(~(vec4<u32>(8806u, 64031u, ~u_input.a, abs(0u)) & ~vec4<u32>(global3.x, 0u, 90125u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global3.x >> (85556u % 32u), arg_3.e.x), arg_1.x, 41172u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global3.x), arg_1.wz) ^ ~global3.x), ~vec4<u32>(abs(global3.x), min(arg_1.x, 59789u), firstTrailingBit(1u), global3.x)));
    var var_1 = select(select(!vec4<bool>(true, true == arg_2.x, arg_3.b, true), select(func_3(~arg_3.e.x), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, global0.b, true, false), vec4<bool>(global0.b, false, true, arg_3.b), vec4<bool>(arg_2.x, false, arg_3.b, arg_3.b))), (all(arg_2.xy) & true) & !arg_2.x), select(vec4<bool>(all(vec3<bool>(false, arg_2.x, false)), any(!vec3<bool>(arg_2.x, true, false)), false, func_3(12747u).x), vec4<bool>(!arg_2.x & arg_3.b, arg_2.x, false, !(arg_2.x & arg_3.b)), true), !func_3(func_1(_wgslsmith_add_u32(0u, arg_1.x), 129f, !vec4<bool>(arg_2.x, false, false, arg_3.b))));
    let var_2 = _wgslsmith_add_vec2_i32(~abs(vec2<i32>(arg_0, -3548i)), reverseBits(_wgslsmith_add_vec2_i32(select(select(arg_3.c, vec2<i32>(global0.c.x, -21530i), true), -vec2<i32>(global1[_wgslsmith_index_u32(global0.e.x, 21u)], 0i), !arg_2.xx), vec2<i32>(firstTrailingBit(arg_3.c.x), ~(-2147483647i)))));
    var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global3.x, arg_1.x) ^ arg_3.e), min(var_0.zy >> (arg_3.e % vec2<u32>(32u)), func_4(vec4<bool>(var_1.x, false, false, false), global0.d, vec4<bool>(global0.b, global0.b, false, false)).xz)), 13536u), 4294967295u, select(4294967295u, arg_3.e.x, global0.b), ~_wgslsmith_mult_u32(abs(4294967295u), global0.e.x | ~arg_3.e.x));
    let var_3 = arg_3;
    return ~(~(~var_3.e.x)) ^ ~(~(~select(0u, var_3.e.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.a.x;
    let var_1 = global0.a.xx;
    var var_2 = global2[_wgslsmith_index_u32(21786u ^ func_5(~(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(35790u, 4294967295u), 21u)]), select(vec4<u32>(global3.x | 0u, _wgslsmith_mult_u32(global0.e.x, u_input.a), func_1(4294967295u, global0.d.x, vec4<bool>(global0.b, false, false, global0.b)), 0u), ~vec4<u32>(43529u, global0.e.x, 1u, 4294967295u), global0.b), !vec3<bool>(!global0.b, true, all(vec3<bool>(global0.b, global0.b, false))), Struct_1(countOneBits(abs(global0.a)), any(!vec2<bool>(false, global0.b)), ~abs(vec2<i32>(-22022i, -2147483647i)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, 1010f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(868f, -787f, -626f))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), global3.yx) & select(vec2<u32>(44625u, 0u), vec2<u32>(29789u, global3.x), vec2<bool>(global0.b, true)))), 23u)];
    let var_3 = all(!select(vec2<bool>(var_1.x == 35646i, false & var_2.b), !vec2<bool>(global0.b, var_2.b), all(vec3<bool>(true, var_2.b, true)) && select(global0.b, global0.b, var_2.b)));
    global3 = firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(37042u, _wgslsmith_div_u32(global0.e.x, 0u), min(19442u, u_input.a), ~global3.x), vec4<u32>(u_input.a & 59853u, 58747u << (global3.x % 32u), abs(3405u), 0u))));
    var var_4 = vec3<i32>(var_1.x, 1i, -1i);
    var_0 = countOneBits(var_2.c.x) | -46460i;
    global3 = ~vec4<u32>(global3.x, u_input.a, ~firstTrailingBit(var_2.e.x), _wgslsmith_mult_u32(select(~u_input.a, 28101u, false), 84686u));
    let x = u_input.a;
    s_output = StorageBuffer(~32653i, ~global0.e.x, global0.e.x);
}

