struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 118641u;

var<private> global1: array<i32, 10> = array<i32, 10>(-63389i, 1i, 0i, -1i, 2147483647i, -67149i, -10689i, 2147483647i, 1i, -37588i);

var<private> global2: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(59971u, 22162u), vec2<u32>(4294967295u, 48631u), vec2<u32>(78757u, 6148u), vec2<u32>(0u, 17030u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 27383u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(50346u, 35568u), vec2<u32>(1155u, 0u), vec2<u32>(0u, 504u), vec2<u32>(0u, 0u));

var<private> global3: array<u32, 18> = array<u32, 18>(1u, 4294967295u, 1u, 1u, 1u, 56685u, 4294967295u, 51065u, 7866u, 4294967295u, 0u, 1u, 17638u, 1u, 40577u, 22904u, 4294967295u, 43359u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], abs(~u_input.a) | u_input.a, -555f, global1[_wgslsmith_index_u32(0u, 10u)]), Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-40223i, u_input.b.x), vec2<i32>(2147483647i, -10549i)), _wgslsmith_sub_i32(-1086i, 1681i)) << (vec2<u32>(firstTrailingBit(u_input.a.x), 4294967295u) % vec2<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), Struct_1(_wgslsmith_clamp_vec2_u32(select(u_input.a.yx, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 12u)], true), global2[_wgslsmith_index_u32(5191u, 12u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 12u)] | vec2<u32>(5943u, 829u)), ~u_input.a, -1090f, 2147483647i), _wgslsmith_mod_i32(-max(0i, global1[_wgslsmith_index_u32(26890u, 10u)]), ~(~u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(869f)), -445f))), 1i >> ((9170u & ((4294967295u ^ global3[_wgslsmith_index_u32(56775u, 18u)]) | (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)] | 1u))) % 32u), Struct_2(reverseBits(-countOneBits(vec2<i32>(-2796i, 2147483647i))), vec3<bool>(any(vec2<bool>(true, true)), true, true), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(51616u, 12u)], vec2<u32>(23089u, 10199u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(2254u, 18u)], 4294967295u), vec2<u32>(0u, 32447u), vec2<u32>(global3[_wgslsmith_index_u32(19189u, 18u)], global3[_wgslsmith_index_u32(6997u, 18u)]))), u_input.a, 447f, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78573u, 18u)], 18u)], 10u)], 0i), vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 10u)], 2147483647i))), _wgslsmith_dot_vec2_i32(u_input.b.zy, firstLeadingBit(~u_input.b.zy))));
    let var_1 = var_0.e;
    global3 = array<u32, 18>();
    let var_2 = var_1.b.x;
    var_0 = Struct_4(Struct_1(var_0.b.c.b.wz, var_1.c.b, _wgslsmith_f_op_f32(-var_1.c.c), global1[_wgslsmith_index_u32(reverseBits(~countOneBits(var_1.c.b.x)), 10u)]), Struct_2(-vec2<i32>(-var_1.a.x, var_1.d), vec3<bool>(any(vec4<bool>(false, var_0.b.b.x, var_1.b.x, var_0.e.b.x)), (var_0.b.b.x | var_0.e.b.x) && var_0.b.b.x, var_1.b.x || !var_0.b.b.x), var_0.e.c, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(-var_0.a.c), ~firstLeadingBit(~21945i & u_input.b.x), var_0.b);
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    return Struct_1(~(~vec2<u32>(u_input.a.x & global3[_wgslsmith_index_u32(38723u, 18u)], _wgslsmith_mod_u32(0u, u_input.a.x))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1865f, -823f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -349f))), abs(func_3()));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = Struct_3(vec3<bool>(true, select(_wgslsmith_f_op_f32(var_0.c - var_0.c) < 590f, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), any(vec2<bool>(true, false))), true), ~var_0.a, Struct_2(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.b.yy >> (vec2<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 18u)], 4294967295u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(u_input.b.zx, reverseBits(u_input.b.yx))), !vec3<bool>(all(vec4<bool>(true, false, true, false)), true, var_0.c <= 209f), Struct_1(var_0.b.zx, ~vec4<u32>(4294967295u, var_0.a.x, var_0.b.x, global3[_wgslsmith_index_u32(32967u, 18u)]) >> (vec4<u32>(var_0.a.x, 1u, var_0.b.x, 27748u) % vec4<u32>(32u)), var_0.c, ~abs(-1i)), -u_input.b.x), u_input.a.yxx);
    let var_2 = _wgslsmith_f_op_f32(-1891f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(var_1.c.c.c + 894f))), _wgslsmith_f_op_f32(-var_0.c)));
    let var_3 = -(var_0.d | var_0.d);
    var var_4 = Struct_1(vec2<u32>(1u, var_0.b.x) >> (_wgslsmith_div_vec2_u32(var_1.b, abs(vec2<u32>(var_1.b.x, 1u))) % vec2<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.b.x, var_0.a.x, 14557u, 14143u), ~vec4<u32>(var_1.c.c.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 34934u, global3[_wgslsmith_index_u32(51785u, 18u)])), _wgslsmith_div_vec4_u32(func_2().b, vec4<u32>(~u_input.a.x, 3916u, 0u, ~var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -591f), -20631i);
    return vec3<bool>(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c + -253f) + _wgslsmith_div_f32(var_1.c.c.c, var_2)))) != _wgslsmith_f_op_f32(-var_4.c), any(var_1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(select(!func_1(), vec3<bool>(true, true, true), true), !vec3<bool>(false, u_input.b.x >= u_input.b.x, true), false), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)])), u_input.a.xzx), 1u & u_input.a.x)), 12u)], Struct_2(select(select(-u_input.b.zy, u_input.b.yx, true), vec2<i32>(~1i, 2147483647i), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_2(), -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], 2965i), vec4<i32>(30424i, -31814i, global1[_wgslsmith_index_u32(0u, 10u)], -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 10u)], -104168i, global1[_wgslsmith_index_u32(0u, 10u)]), vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 10u)], global1[_wgslsmith_index_u32(29372u, 10u)], u_input.b.x)))), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(~u_input.a.x, 18u)], ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.c.a.x, 256u), 18u)], ~var_0.b.x | (0u >> (var_0.b.x % 32u)), ~var_0.b.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global3[_wgslsmith_index_u32(52306u, 18u)], u_input.a.x)), select(vec2<u32>(22457u, 44429u), vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 18u)]), var_0.c.b.xx)) | 1u), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(func_3(), select(3070i, -2147483647i, true)), 17744i, u_input.b.x), u_input.b & vec3<i32>(_wgslsmith_sub_i32(var_0.c.d, 47874i), func_2().d, 2147483647i)), abs(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, 31378i, 6930i, 11285i), abs(vec4<i32>(u_input.b.x, var_0.c.d, 1i, global1[_wgslsmith_index_u32(9946u, 10u)])), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -20738i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 10u)], 2147483647i))), ~u_input.a.wwy);
}

