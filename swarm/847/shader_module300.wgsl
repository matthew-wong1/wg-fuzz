struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-1302f, 125f, 991f, -1000f, -1000f, -449f, 676f, -1632f, 566f, -2209f, 141f, -438f, -613f, 390f, -260f);

var<private> global1: array<u32, 8>;

var<private> global2: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = arg_0.c;
    var var_1 = vec3<bool>(true, all(arg_0.a.zx), false);
    let var_2 = var_0.a.d;
    var var_3 = Struct_2(arg_0.c.a, arg_0.c.b, arg_0.c.c);
    global1 = array<u32, 8>();
    return 1i;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], ~countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(2684u), 8u)], 8u)], 8u)]), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 8u)], 8u)]);
    let var_1 = reverseBits(vec2<i32>(func_3(Struct_4(vec4<bool>(true, true, true, true), vec2<u32>(var_0.x, var_0.x), Struct_2(Struct_1(false, false, true, vec4<i32>(arg_0.x, u_input.a, arg_0.x, -51986i), arg_0), vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], 65263u, 14577u), Struct_1(true, true, false, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<i32>(-45406i, arg_0.x))), Struct_3(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2216u, 8u)], 15u)], Struct_1(true, true, false, vec4<i32>(u_input.a, -73628i, 0i, u_input.a), vec2<i32>(u_input.a, -12101i)), var_0.x, 38033i, false))), -48171i));
    let var_2 = vec4<bool>(true, false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))), true);
    var var_3 = select(var_2.x, var_2.x, any(vec3<bool>(var_2.x, true, true)));
    let var_4 = Struct_2(Struct_1(true, true, var_2.x, vec4<i32>(_wgslsmith_mult_i32(-32911i, _wgslsmith_div_i32(540i, var_1.x)), 1i, -27674i, 1i), var_1), vec3<u32>(4294967295u, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(36759u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(var_0.x, 8u)], 23981u), vec4<u32>(global1[_wgslsmith_index_u32(15205u, 8u)], var_0.x, 50764u, 1u)), var_0.x), _wgslsmith_mod_vec3_u32(min(vec3<u32>(7533u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6516u, 8u)], 8u)], 8u)], 8u)]), vec3<u32>(global1[_wgslsmith_index_u32(12591u, 8u)], var_0.x, 11072u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x))))), Struct_1(!(!(!var_2.x)), !var_2.x, !(all(vec4<bool>(false, false, var_2.x, var_2.x)) && !var_2.x), vec4<i32>(-1i) * -min(vec4<i32>(var_1.x, var_1.x, -1i, u_input.a), vec4<i32>(-1i, 0i, arg_0.x, var_1.x)), max(var_1, vec2<i32>(2147483647i, u_input.a) & _wgslsmith_clamp_vec2_i32(arg_0, arg_0, var_1))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(var_4.b.x, var_0.x), ~var_4.b.x), 15u)])))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_0.c.d;
    var var_1 = 4294967295u;
    global0 = array<f32, 15>();
    let var_2 = global2.x;
    global1 = array<u32, 8>();
    return _wgslsmith_f_op_f32(func_2(vec2<i32>(-(~1i), -_wgslsmith_div_i32(arg_0.a.e.x, u_input.a) & ~arg_2.x)));
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(-545f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u ^ global1[_wgslsmith_index_u32(0u, 8u)], 15u)]))), arg_0.b, _wgslsmith_dot_vec2_u32(max(select(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c, 8u)], 8u)], global1[_wgslsmith_index_u32(112729u, 8u)]), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false)), vec2<u32>(0u, arg_0.c)) >> (vec2<u32>(countOneBits(0u), _wgslsmith_div_u32(24020u, global1[_wgslsmith_index_u32(arg_0.c, 8u)])) % vec2<u32>(32u)), vec2<u32>(min(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 8u)]), min(global1[_wgslsmith_index_u32(1u, 8u)], arg_0.c)), min(abs(41164u), ~22247u))), 2147483647i, !((~arg_0.c != (global1[_wgslsmith_index_u32(40194u, 8u)] >> (arg_0.c % 32u))) | !(!arg_0.e)));
    var var_1 = Struct_1(true, false, true && !arg_0.e, _wgslsmith_sub_vec4_i32(~var_0.b.d, -abs(-vec4<i32>(var_0.b.e.x, -8595i, 34352i, var_0.d))), var_0.b.d.zw);
    var var_2 = ~(~vec4<u32>(abs(arg_0.c), 16216u, ~_wgslsmith_clamp_u32(5861u, 0u, 78000u), 0u));
    var var_3 = Struct_5(7428u, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(-arg_0.a)), arg_0.b, 5993u, 0i, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0.a));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec2_i32(arg_0.b.e, abs(var_1.e) & var_3.b.b.e, -reverseBits(vec2<i32>(-1i, -1191i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)), var_0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(max(arg_0.c & global1[_wgslsmith_index_u32(4294967295u, 8u)], 13312u >> (var_0.c % 32u)), 15u)], 1153f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1236f * -299f), _wgslsmith_f_op_f32(step(-649f, var_3.c)), true)), _wgslsmith_f_op_f32(-global2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    global2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true, true, false, vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec3<u32>(38815u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30275u, 8u)], 8u)], 28136u), Struct_1(false, false, true, vec4<i32>(u_input.a, -5865i, u_input.a, 17512i), vec2<i32>(u_input.a, u_input.a))), Struct_2(Struct_1(false, false, false, vec4<i32>(-26885i, -62621i, -29969i, -72952i), vec2<i32>(-2147483647i, 1i)), vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(1u, 8u)]), Struct_1(false, false, false, vec4<i32>(-45508i, 9649i, 20219i, -1i), vec2<i32>(-13343i, u_input.a))), vec3<i32>(u_input.a, u_input.a, -2147483647i)))), Struct_1(1776f >= global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4609u, 8u)], 8u)], 8u)], 8u)], 15u)], false, true, reverseBits(vec4<i32>(-33505i, u_input.a, -36788i, -1i)), ~vec2<i32>(-13595i, -30649i)), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)]), 1i, !select(true, false, false)))));
    global1 = array<u32, 8>();
    let var_0 = min(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.a, u_input.a, 2147483647i)), -(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 18921i, u_input.a))), firstTrailingBit(~vec3<i32>(~u_input.a, i32(-1i) * -2147483647i, -u_input.a)));
    global0 = array<f32, 15>();
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~reverseBits(global1[_wgslsmith_index_u32(29169u, 8u)]), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37525u, 8u)], 8u)], 79639u) & vec3<u32>(global1[_wgslsmith_index_u32(79029u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(34876u, 8u)]), vec3<u32>(14053u, global1[_wgslsmith_index_u32(41385u, 8u)], 1u)), _wgslsmith_add_u32(41165u, global1[_wgslsmith_index_u32(1u, 8u)]) << (~global1[_wgslsmith_index_u32(63686u, 8u)] % 32u))), _wgslsmith_mult_u32(~(global1[_wgslsmith_index_u32(1u, 8u)] << (~4294967295u % 32u)), ~global1[_wgslsmith_index_u32(1u >> (_wgslsmith_mod_u32(3818u, global1[_wgslsmith_index_u32(0u, 8u)]) % 32u), 8u)]));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-28076i, firstLeadingBit(u_input.a), -1i), var_0);
    var var_3 = select(select(vec2<bool>(false, firstTrailingBit(var_0.x) == _wgslsmith_div_i32(u_input.a, 0i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), !vec2<bool>(true, 0u >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27383u, 8u)], 8u)])), !vec2<bool>(!all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), abs(1u) > (~1u ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39974u, 8u)], 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)]), vec3<u32>(global1[_wgslsmith_index_u32(351u, 8u)], 4294967295u, 36131u)), 8u)])));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(step(-704f, _wgslsmith_f_op_f32(-global2.x))), !(!all(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), true, -abs(-vec4<i32>(-37939i, u_input.a, -1i, var_2.x)), vec2<i32>(-1i, 1i)), ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)])), 14879u & global1[_wgslsmith_index_u32(49785u, 8u)], ~0u)), Struct_1(!all(select(vec4<bool>(false, true, false, false), vec4<bool>(var_3.x, false, true, false), vec4<bool>(var_3.x, false, false, var_3.x))), true, true, firstLeadingBit(reverseBits(select(vec4<i32>(var_0.x, 0i, var_2.x, -82585i), vec4<i32>(-12256i, u_input.a, -1i, 1i), var_3.x))), ~(-vec2<i32>(-7472i, -1i) >> (~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 0u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(1161f, ~17247u, ~(-_wgslsmith_add_i32(countOneBits(-2147483647i), -var_2.x)), var_4.c.d, vec3<u32>(global1[_wgslsmith_index_u32(var_4.b.x, 8u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_4.b.x, 8u)] & var_4.b.x, var_4.b.x & 1u), ~vec2<u32>(global1[_wgslsmith_index_u32(var_4.b.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_dot_vec2_u32(select(var_4.b.zx, vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(1u, global1[_wgslsmith_index_u32(21429u, 8u)]), select(vec2<bool>(var_4.c.a, false), vec2<bool>(false, var_3.x), var_3.x)), var_4.b.yx)));
}

