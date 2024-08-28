struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -25529i;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(1020f), Struct_2(-1000f));

var<private> global2: array<u32, 6>;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-126f), Struct_2(614f), Struct_2(135f), Struct_2(294f), Struct_2(-160f), Struct_2(-739f), Struct_2(143f), Struct_2(-1000f), Struct_2(-128f), Struct_2(413f), Struct_2(-1412f), Struct_2(845f), Struct_2(1773f), Struct_2(-603f));

var<private> global4: array<Struct_2, 28>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    return 45395u;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-17544i, 21231i), vec2<i32>(u_input.a, -1i)), countOneBits(vec2<i32>(-40137i, u_input.a)))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) >> (vec4<u32>(4360u, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(u_input.a, -28623i, ~(-2147483647i), u_input.a))) << (~(~firstTrailingBit(u_input.b)) % 32u);
    global0 = select(abs(1i), u_input.a, !(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))));
    var var_0 = arg_1;
    global1 = array<Struct_2, 2>();
    var var_1 = ~(~vec4<u32>(global2[_wgslsmith_index_u32(arg_1, 6u)], func_3(), ~1u, arg_1));
    return firstTrailingBit(func_3());
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    global3 = array<Struct_2, 14>();
    var var_0 = -(u_input.a >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 6u)], 1u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(50699u, 6u)], u_input.b, 6760u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)])), ~(~vec4<u32>(u_input.b, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 88233u))) % 32u));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~u_input.b, 6u)], 33227u) ^ 1u, arg_2, 31478u << (countOneBits(arg_2) % 32u), u_input.b) & ((firstTrailingBit(~vec4<u32>(0u, 32796u, 4294967295u, 5695u)) >> (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_2, 6u)] & 1u, u_input.b & 35936u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(4005u, 6u)]), ~43658u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 6u)], 17440u), 4294967295u) % vec4<u32>(32u)));
    let var_2 = arg_1.x;
    let var_3 = arg_3;
    return abs(vec4<u32>(0u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1639f)), ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 6u)], 6u)] & 0u), Struct_2(-653f)), ~_wgslsmith_dot_vec2_u32(~var_1.zz, _wgslsmith_clamp_vec2_u32(var_1.yx, vec2<u32>(arg_2, u_input.b), var_1.yy)), ~var_1.x));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(select(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1 | vec4<u32>(4294967295u, u_input.b, 1573u, arg_0), arg_1), arg_1.x ^ 61304u), u_input.b | (45451u ^ u_input.b), true), func_2(arg_2.a, arg_0 ^ _wgslsmith_mod_u32(u_input.b, arg_1.x), Struct_2(arg_2.a)), ~_wgslsmith_sub_u32(u_input.b, reverseBits(7719u) >> (global2[_wgslsmith_index_u32(~1u, 6u)] % 32u)));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-(i32(-1i) * -67509i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(19777i, -1i, -78318i, u_input.a), vec4<i32>(-50521i, -58502i, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 42317i))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), max(vec2<i32>(16883i, u_input.a), vec2<i32>(60849i, 0i))) >> (vec2<u32>(abs(arg_1.x), var_0.x) % vec2<u32>(32u))));
    let var_2 = any(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), any(vec2<bool>(false, false))), true), vec3<bool>(true, true, true), false));
    var_1 = Struct_1(~var_1.a);
    let var_3 = select(!(!(!(!vec4<bool>(var_2, var_2, true, true)))), select(!vec4<bool>(false, var_2, true, true), select(vec4<bool>(!var_2, var_2, true, select(true, false, var_2)), vec4<bool>(var_2, var_2, true, true), select(select(vec4<bool>(var_2, var_2, true, true), vec4<bool>(false, var_2, false, var_2), var_2), !vec4<bool>(false, var_2, var_2, false), vec4<bool>(var_2, var_2, false, var_2))), !vec4<bool>(var_2, var_2, !var_2, var_2)), var_2);
    return Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.a, -1i, -43834i) | _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a, u_input.a, var_1.a) ^ vec3<i32>(u_input.a, 0i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(48552i, 15530i, u_input.a), vec3<i32>(2147483647i, 0i, var_1.a))), min(vec3<i32>(-u_input.a, var_1.a, firstTrailingBit(2147483647i)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, var_1.a), ~0i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(((vec4<u32>(4294967295u, 0u, 12055u, 1u) & vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b, u_input.b, u_input.b)) & ~vec4<u32>(u_input.b, 61443u, 4294967295u, 30855u)) ^ vec4<u32>(4294967295u, _wgslsmith_div_u32(1u, u_input.b), ~global2[_wgslsmith_index_u32(55488u, 6u)], _wgslsmith_div_u32(8039u, 1u)), func_1(vec4<bool>(true, false, true, select(false, false, true)), vec2<bool>(true, true), max(40566u, u_input.b), Struct_1(2147483647i << (u_input.b % 32u)))), 6u)], min(select(abs(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 13087u)), vec4<u32>(29757u, 34368u, 52433u, u_input.b), all(vec2<bool>(true, false))), ~abs(vec4<u32>(1u, 0u, 36491u, 4294967295u))) | vec4<u32>(max(7138u, ~34436u), u_input.b, _wgslsmith_mult_u32(34991u, global2[_wgslsmith_index_u32(1u, 6u)]), select(~u_input.b, ~u_input.b, select(true, false, false))), global1[_wgslsmith_index_u32(~1u, 2u)]);
    var var_1 = global3[_wgslsmith_index_u32(8424u | abs(~_wgslsmith_add_u32(u_input.b, func_3())), 14u)];
    let var_2 = vec4<u32>(1u << (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(43206u, 6u)], 6u)], global2[_wgslsmith_index_u32(29407u, 6u)]) % 32u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~0u) << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], 1u, u_input.b, u_input.b)), ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b, 0u, global2[_wgslsmith_index_u32(4294967295u, 6u)])), 6u)] % 32u), countOneBits(120489u)), 6u)], 41683u, ~1u);
    var var_3 = Struct_1(-var_0.a ^ ~(~(-15481i)));
    global4 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -171f), var_1.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -8270i, u_input.a), vec4<i32>(u_input.a, -1i, var_3.a, 1i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_2.x, 6u)], 0u, u_input.b, 24215u), var_2) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(1i, -1i, 0i, 1i), vec4<i32>(var_0.a, var_3.a, u_input.a, -2147483647i)), max(vec4<i32>(u_input.a, var_0.a, var_0.a, -11809i), vec4<i32>(var_3.a, -24068i, 22929i, -1i)))), -(~firstTrailingBit(vec4<i32>(34763i, var_3.a, -1i, var_0.a)))), var_2.x, (~(vec3<i32>(u_input.a, 2147483647i, 0i) & vec3<i32>(var_3.a, var_3.a, var_0.a)) ^ vec3<i32>(-1i, ~(-45982i), -1i << (var_2.x % 32u))) << (reverseBits(~select(var_2.zww, var_2.xyz, vec3<bool>(true, true, true))) % vec3<u32>(32u)));
}

