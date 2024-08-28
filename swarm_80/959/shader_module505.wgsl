struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 25> = array<u32, 25>(27587u, 4294967295u, 112173u, 53764u, 0u, 48994u, 4294967295u, 46127u, 0u, 14688u, 83621u, 1u, 9359u, 8785u, 11184u, 0u, 58639u, 4294967295u, 1u, 87400u, 1u, 34366u, 24421u, 144u, 33574u);

var<private> global3: array<bool, 28> = array<bool, 28>(false, false, false, false, false, false, false, true, false, false, false, false, true, true, true, false, true, false, true, false, false, false, true, true, false, false, false, false);

var<private> global4: array<u32, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    return u_input.b.x;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<i32> {
    global3 = array<bool, 28>();
    let var_0 = Struct_3(Struct_2(arg_0.a, select(arg_0.a.e, vec4<bool>(!global1.x, all(vec2<bool>(global3[_wgslsmith_index_u32(10206u, 28u)], arg_0.b.x)), arg_0.b.x, all(arg_0.a.e.xy)), true)));
    global1 = select(!(!(!(!var_0.a.b.yxw))), select(arg_0.a.e.yzw, select(arg_0.b.wyx, !arg_0.a.e.wwx, select(vec3<bool>(true, global3[_wgslsmith_index_u32(24005u, 28u)], var_0.a.b.x), select(vec3<bool>(true, global3[_wgslsmith_index_u32(2928u, 28u)], global1.x), arg_0.a.e.wwz, global1.x), !global1.x)), any(var_0.a.a.e.xy) && select(any(arg_0.b.zzw), all(var_0.a.b), global1.x & false)), var_0.a.b.zzx);
    var var_1 = _wgslsmith_dot_vec4_u32(max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, global4[_wgslsmith_index_u32(4294967295u, 12u)], arg_0.a.a, 24595u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.e, 25u)], 20247u, 4294967295u, 18529u), ~vec4<u32>(25998u, 1u, var_0.a.a.a, global4[_wgslsmith_index_u32(var_0.a.a.a, 12u)])), min(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], global4[_wgslsmith_index_u32(1u, 12u)], arg_0.a.a, 1u), vec4<u32>(45474u, var_0.a.a.a, 31958u, arg_0.a.a)), vec4<u32>(var_0.a.a.a, 65765u, 39403u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.a, 25u)], 12u)]) & vec4<u32>(20499u, 5265u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.a, 25u)], 25u)], 52943u)), vec4<u32>(u_input.e, ~0u, 10598u, select(global2[_wgslsmith_index_u32(6652u, 25u)], arg_0.a.a, global1.x)))), vec4<u32>(~(~max(u_input.a.x, 38030u)), arg_0.a.a, 73657u ^ max(~22562u, global2[_wgslsmith_index_u32(15750u, 25u)] | 4294967295u), 0u));
    let var_2 = Struct_2(Struct_1(~((global4[_wgslsmith_index_u32(24268u, 12u)] ^ 0u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20994u, global2[_wgslsmith_index_u32(arg_0.a.a, 25u)], u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.e, 1u))), all(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 28u)])), true, var_0.a.a.c, !arg_0.a.e), var_0.a.b);
    return ~vec4<i32>(u_input.b.x, -arg_1, _wgslsmith_mult_i32(-arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -2147483647i), vec4<i32>(-14738i, arg_1, u_input.b.x, arg_1))) << (abs(~41703u) % 32u), 18327i);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(false, !any(vec3<bool>(arg_1.x, true, global1.x)), any(select(vec2<bool>(true, any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(1u, 28u)], arg_1.x))), arg_1.xz, !arg_1.xz)));
    let var_1 = Struct_1(countOneBits(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(366u, 25u)], 4294967295u)) << (1u % 32u), global1.x, any(vec2<bool>(all(arg_1), global3[_wgslsmith_index_u32(~1u, 28u)])) | arg_1.x, (func_2(Struct_1(1u, true, true, false, vec4<bool>(arg_1.x, false, var_0.x, false)), vec3<i32>(u_input.b.x, global0.x, global0.x), Struct_3(Struct_2(Struct_1(4294967295u, global3[_wgslsmith_index_u32(85629u, 28u)], global3[_wgslsmith_index_u32(u_input.d, 28u)], arg_1.x, vec4<bool>(false, true, false, true)), vec4<bool>(global3[_wgslsmith_index_u32(0u, 28u)], var_0.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6493u, 25u)], 12u)], 25u)], 28u)], arg_1.x)))) < 1i) | any(select(arg_1.wwy, select(vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 12u)], 28u)], true, arg_1.x), vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 12u)], 28u)], false, false), var_0.x), vec3<bool>(true, true, true))), select(!arg_1, vec4<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(25013u, 12u)], 4401u), 25u)] >= global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], firstLeadingBit(u_input.c) == global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 12u)], 25u)] & global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 12u)], 25u)], 12u)], true), true));
    global1 = select(select(var_1.e.xzx, !var_0, func_2(Struct_1(4294967295u, false, var_0.x, false, var_1.e), arg_0.zyz, Struct_3(Struct_2(Struct_1(var_1.a, true, var_1.d, false, vec4<bool>(true, false, true, false)), vec4<bool>(false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 12u)], 28u)], true, var_1.d)))) == -(i32(-1i) * -39207i)), vec3<bool>(var_0.x, false, global1.x), false);
    var var_2 = vec4<i32>(~arg_0.x, arg_0.x, abs(func_2(var_1, global0.wwz, Struct_3(Struct_2(Struct_1(19956u, true, var_1.c, var_0.x, vec4<bool>(true, false, var_1.b, false)), var_1.e)))), -(i32(-1i) * -u_input.b.x)) & func_3(Struct_2(var_1, select(vec4<bool>(false, var_1.b, global1.x, true), var_1.e, true)), _wgslsmith_dot_vec3_i32(-max(global0.ywx, arg_0.wyz), ~abs(vec3<i32>(arg_2.x, 1i, global0.x))));
    var_2 = arg_0;
    return Struct_2(var_1, select(arg_1, !vec4<bool>(true, !global1.x, false, -23701i != global0.x), global0.x < arg_0.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = 33538u >> (select(1u, abs(31863u), 1u > ~(15531u | arg_0.a.a.a)) % 32u);
    global3 = array<bool, 28>();
    let var_1 = func_1(~(-(vec4<i32>(1i, u_input.b.x, 30657i, u_input.b.x) >> (vec4<u32>(arg_1.a.a.a, global4[_wgslsmith_index_u32(0u, 12u)], 4294967295u, 0u) % vec4<u32>(32u)))) | (vec4<i32>(-22865i, -15653i, global0.x, abs(-1i)) & _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(33748i, 0i, 116i, u_input.b.x)), vec4<i32>(-3729i, global0.x, global0.x, u_input.b.x) << (vec4<u32>(arg_0.a.a.a, 0u, 0u, arg_3.a.a) % vec4<u32>(32u)), countOneBits(vec4<i32>(1i, global0.x, global0.x, u_input.b.x)))), !select(select(vec4<bool>(arg_2.e.x, false, false, global1.x), !vec4<bool>(arg_0.a.a.e.x, arg_2.c, false, arg_2.e.x), vec4<bool>(true, arg_2.e.x, true, global1.x)), vec4<bool>(-4337i <= u_input.b.x, true, any(arg_0.a.a.e.zw), false), arg_0.a.b), vec2<i32>(-global0.x, ~23488i));
    let var_2 = func_2(func_1(vec4<i32>(~(~global0.x), 2147483647i, -42640i, global0.x), select(arg_1.a.b, arg_1.a.b, arg_3.a.e), vec2<i32>(i32(-1i) * -68706i, global0.x)).a, vec3<i32>(global0.x, global0.x, -_wgslsmith_add_i32(0i, 34129i) ^ _wgslsmith_mult_i32(func_3(var_1, u_input.b.x).x, _wgslsmith_sub_i32(u_input.b.x, 0i))), arg_1);
    let var_3 = arg_1;
    return arg_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 12>();
    let var_0 = i32(-1i) * -firstTrailingBit(global0.x);
    var var_1 = -(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-47599i, 66425i, var_0, global0.x), ~vec4<i32>(global0.x, 13828i, u_input.b.x, global0.x)), ~(vec4<i32>(var_0, var_0, 15537i, 2147483647i) | vec4<i32>(u_input.b.x, 41205i, -28096i, -2147483647i))));
    var var_2 = all(vec2<bool>(global1.x | (false && any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 28u)], global1.x, false))), _wgslsmith_add_i32(countOneBits(-1i), global0.x) > (~u_input.b.x & (7176i >> (global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 12u)] % 32u)))));
    let var_3 = select(max(-(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x) << (firstLeadingBit(vec4<u32>(u_input.c, 39859u, 4294967295u, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 12u)], 25u)])) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(9619i, var_0, -78918i, 2147483647i) >> (vec4<u32>(u_input.d, 0u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(-10643i, global0.x, 29118i, u_input.b.x))), vec4<i32>(_wgslsmith_div_i32(5578i, select(firstTrailingBit(global0.x), ~u_input.b.x, true)), global0.x, 600i, ~(-(1i | var_0))), any(select(vec4<bool>(any(global1.yx), true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(5901u, 25u)], 1u), 28u)], false != global1.x), func_4(Struct_3(Struct_2(Struct_1(u_input.e, global1.x, false, global3[_wgslsmith_index_u32(77911u, 28u)], vec4<bool>(true, true, global1.x, global1.x)), vec4<bool>(global1.x, true, false, global1.x))), Struct_3(Struct_2(Struct_1(37267u, global3[_wgslsmith_index_u32(10490u, 28u)], false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 12u)], 28u)], vec4<bool>(false, false, global1.x, false)), vec4<bool>(global1.x, global1.x, global3[_wgslsmith_index_u32(u_input.d, 28u)], true))), Struct_1(global4[_wgslsmith_index_u32(31530u, 12u)], global3[_wgslsmith_index_u32(u_input.c, 28u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(152361u, 12u)], 28u)], global3[_wgslsmith_index_u32(1u, 28u)], vec4<bool>(true, global1.x, global1.x, global3[_wgslsmith_index_u32(39729u, 28u)])), func_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -26443i), vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 28u)], global1.x, false, false), global0.zx)), true)));
    var_2 = global0.x < abs(min(func_2(Struct_1(global4[_wgslsmith_index_u32(4294967295u, 12u)], false, global3[_wgslsmith_index_u32(15304u, 28u)], false, vec4<bool>(global3[_wgslsmith_index_u32(13099u, 28u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42579u, 12u)], 12u)], 25u)], 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)], true)), vec3<i32>(u_input.b.x, 0i, var_0) | var_3.zwx, Struct_3(Struct_2(Struct_1(39023u, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 25u)], 25u)], 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], vec4<bool>(global1.x, true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42843u, 12u)], 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)])), vec4<bool>(global3[_wgslsmith_index_u32(1u, 28u)], false, global1.x, false)))), abs(_wgslsmith_add_i32(var_3.x, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1141f, 1025f), var_3.x);
}

