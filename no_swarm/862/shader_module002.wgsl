struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(56569u, vec4<i32>(2147483647i, -68459i, -47687i, 2147483647i), -773f, 54204i, i32(-2147483648)), Struct_1(19005u, vec4<i32>(i32(-2147483648), -21247i, -44803i, -14743i), -552f, -60252i, i32(-2147483648)), Struct_1(65808u, vec4<i32>(82049i, -6073i, -13745i, 2789i), 603f, -1i, 6921i), Struct_1(0u, vec4<i32>(0i, 36518i, -38550i, 22535i), 1072f, -7311i, 2147483647i), Struct_1(0u, vec4<i32>(1i, -33412i, 1i, -33961i), -1000f, 35526i, 0i), Struct_1(1u, vec4<i32>(0i, -20389i, -1i, 3056i), 1897f, i32(-2147483648), -3431i), Struct_1(3353u, vec4<i32>(7754i, 2147483647i, 51931i, -27481i), 262f, 1i, -23009i), Struct_1(56401u, vec4<i32>(-1i, -57191i, 0i, -30788i), -606f, i32(-2147483648), 44032i), Struct_1(4294967295u, vec4<i32>(-36481i, 36495i, 6841i, 2147483647i), 360f, -1i, -1i), Struct_1(11384u, vec4<i32>(25052i, -1i, 0i, 1i), -1544f, -31310i, 2147483647i), Struct_1(0u, vec4<i32>(1i, -6218i, 1i, 10227i), 1000f, 62016i, 2147483647i), Struct_1(33943u, vec4<i32>(2147483647i, -1i, 7893i, i32(-2147483648)), -1566f, 2147483647i, i32(-2147483648)), Struct_1(6712u, vec4<i32>(5498i, 6377i, -53935i, 0i), -947f, 1i, -50094i));

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = min(vec3<i32>(-reverseBits(1i), ~_wgslsmith_clamp_i32(-13385i, arg_3.e | arg_2.b.x, ~1533i), _wgslsmith_mod_i32(-24199i, arg_3.b.x)), min(-arg_3.b.wxw, vec3<i32>(i32(-1i) * -2147483647i, 0i, _wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(u_input.b, -18205i, 2147483647i, arg_3.b.x) & arg_3.b))));
    var var_1 = u_input.b;
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-162f, 879f))));
    var var_4 = abs(abs(min(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.x, arg_0.x, 13702u)), firstTrailingBit(vec3<u32>(0u, u_input.c.x, 1u)), firstTrailingBit(u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 17223u, 337u), u_input.c))));
    return 11604u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = 54262u;
    var var_1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c.xy, u_input.c.yy), vec2<u32>(reverseBits(23288u), ~u_input.c.x)), u_input.c.x >> (abs(func_3(u_input.c.xz, u_input.c.zy, arg_0, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a, 138102u), 13u)])) % 32u));
    var var_2 = u_input.b;
    global2 = vec2<bool>(true, all(select(!vec4<bool>(false, global2.x, false, false), vec4<bool>(true, any(vec3<bool>(global2.x, global2.x, global2.x)), false, global2.x | global2.x), !(!vec4<bool>(true, global2.x, true, global2.x)))));
    let var_3 = Struct_1(_wgslsmith_mod_u32(select(_wgslsmith_sub_u32(min(59891u, 1u), global1.a), ~select(global1.a, 4294967295u, true), false | any(vec3<bool>(false, global2.x, global2.x))), ~arg_0.a << (_wgslsmith_add_u32(countOneBits(13701u), 1u) % 32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~(arg_0.b & vec4<i32>(1i, -31588i, -58379i, 0i)), -abs(global1.b)), firstTrailingBit(vec4<i32>(global1.b.x, ~(-1i), -1i, select(global1.d, global1.b.x, false)))), arg_1, reverseBits(-2147483647i), 1i);
    return !(!vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), global2.x)), any(vec4<bool>(false, true, global2.x, global2.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    global2 = select(vec2<bool>(any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(true, true, global2.x, global2.x), false), true)), false), select(select(select(func_2(Struct_1(arg_0.x, vec4<i32>(global1.e, arg_1.e, arg_1.b.x, arg_1.d), global1.c, global1.d, global1.b.x), global1.c), vec2<bool>(global2.x, global2.x), true), vec2<bool>(true || global2.x, !global2.x), vec2<bool>(true, true)), !select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true), global2.x), vec2<bool>(global2.x, global2.x), !vec2<bool>(global2.x, global2.x)), global2.x), global2.x);
    let var_0 = Struct_1(~27553u, global1.b, 681f, u_input.b, u_input.d.x);
    let var_1 = ~global1.a;
    let var_2 = vec2<i32>(arg_1.b.x, ~(i32(-1i) * -59828i));
    var var_3 = true;
    return any(!vec4<bool>(!(arg_1.c <= var_0.c), all(!vec2<bool>(false, global2.x)), 27402i <= ~u_input.b, all(vec3<bool>(global2.x, global2.x, global2.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = !(!global2.x);
    let var_1 = _wgslsmith_f_op_f32(-536f - arg_1.c);
    let var_2 = vec2<i32>(abs(reverseBits(0i)), arg_1.d);
    var var_3 = Struct_1(18289u, global1.b, 166f, _wgslsmith_add_i32(var_2.x, ~1i), ~1i);
    var var_4 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * arg_0.x) > global1.c, global2.x, any(vec4<bool>(global2.x, false, true, global2.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f + global1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-181f)), -2199f, func_1(vec2<u32>(0u, 4294967295u), Struct_1(16154u, vec4<i32>(global1.d, global1.e, -2147483647i, -1i), global1.c, 2147483647i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) * _wgslsmith_f_op_f32(step(2748f, global1.c))), _wgslsmith_f_op_f32(f32(-1f) * -1558f)))), Struct_1(u_input.c.x, vec4<i32>(~5311i, u_input.d.x, -26788i, 0i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c))), -30843i, 4182i), vec3<f32>(-952f, -1254f, global1.c), ~_wgslsmith_clamp_vec2_u32(u_input.c.xy, countOneBits(vec2<u32>(global1.a, 2917u)) >> (reverseBits(u_input.c.zy) % vec2<u32>(32u)), min(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x)))));
    var var_1 = Struct_1(firstTrailingBit(u_input.c.x) ^ global1.a, global1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1687f)))), global1.d, u_input.a.x);
    var var_2 = global0[_wgslsmith_index_u32(select(8009u, 54110u, _wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(ceil(337f)), _wgslsmith_f_op_f32(-var_1.c), var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(76836u, 7113u), vec2<u32>(global1.a, global1.a)), 13u)], vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), 1000f, _wgslsmith_f_op_f32(abs(global1.c))), _wgslsmith_div_vec2_u32(vec2<u32>(28085u, var_1.a), u_input.c.xy))).x <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.c)), var_0.x))), 13u)];
    global2 = !vec2<bool>(global2.x, true);
    let var_3 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_4 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_5 = Struct_1(var_3.a, -(~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 44833i, var_3.d, -28499i)), var_1.b)), var_4.c, -var_2.d, max(-34253i, global1.d));
    var var_6 = all(!(!func_2(Struct_1(var_4.a, vec4<i32>(1i, var_2.e, -2147483647i, 0i), global1.c, 72910i, var_4.b.x), global1.c)));
    var var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_3.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c - global1.c), -740f)))), var_5.c)), 1091f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(~u_input.c.xx), vec2<u32>(~var_4.a, var_4.a)), ~_wgslsmith_clamp_vec2_u32(abs(u_input.c.xx), ~u_input.c.yx, vec2<u32>(u_input.c.x, 9082u) & u_input.c.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1583f - var_0.x) * _wgslsmith_f_op_f32(-var_2.c)));
}

