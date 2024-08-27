struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<u32, 24>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_div_vec3_i32(-u_input.d, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(33301i, global2.x, 9909i)) ^ ~vec3<i32>(u_input.a.x, global2.x, global2.x)) & (-vec3<i32>(-2147483647i, 32209i, u_input.e) << (firstLeadingBit(min(vec3<u32>(0u, 53546u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b))) % vec3<u32>(32u))));
    let var_1 = Struct_4(23826i, ~abs((vec2<u32>(u_input.b, 1u) >> (vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], 0u) % vec2<u32>(32u))) ^ ~vec2<u32>(14252u, 34862u)));
    var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 5185i), (-(~u_input.a.x) ^ ~(~2147483647i)) << (21716u % 32u), -40971i);
    var var_2 = vec3<bool>(true, true, _wgslsmith_add_u32(~(~global1[_wgslsmith_index_u32(u_input.b, 24u)]), ~u_input.b) == var_1.b.x);
    var var_3 = Struct_3(abs(-(~vec4<i32>(0i, 0i, var_0.x, u_input.d.x)) | abs(firstTrailingBit(vec4<i32>(u_input.c, var_0.x, var_1.a, 29000i)))), Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(var_1.b.x, 24u)], var_1.b.x), ~vec3<u32>(47400u, 18797u, 1u)), !(!(!var_2.xx))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(15835u, 24u)], 4877u, var_1.b.x, u_input.b), vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18193u, 24u)], 24u)], u_input.b), vec4<u32>(31444u, var_1.b.x, var_1.b.x, 0u))), vec4<u32>(global1[_wgslsmith_index_u32(~u_input.b, 24u)], _wgslsmith_div_u32(global1[_wgslsmith_index_u32(25627u, 24u)], u_input.b), 1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 24u)], 24u)])), firstTrailingBit(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 24u)], 1u, global1[_wgslsmith_index_u32(u_input.b, 24u)])) >> (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_1.b.x, u_input.b, 0u), vec4<u32>(0u, 55285u, var_1.b.x, u_input.b)), vec4<u32>(20671u, u_input.b, var_1.b.x, 1u) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53171u, 24u)], 24u)], 29664u, var_1.b.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.d.x, var_0.x, 1i, -11383i) ^ vec4<i32>(2147483647i, u_input.a.x, u_input.e, var_1.a)) | -(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 0i) | vec4<i32>(var_1.a, var_0.x, -1i, global2.x)), ~max(vec4<i32>(57894i, 0i, global2.x, -1i) << (vec4<u32>(1u, var_1.b.x, 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-22494i, var_0.x, u_input.a.x, var_1.a), vec4<i32>(global2.x, 1i, u_input.e, var_1.a)))));
    return max(abs(vec3<u32>(~(1u << (var_1.b.x % 32u)), ~_wgslsmith_mult_u32(var_3.c.x, 51318u), global1[_wgslsmith_index_u32(abs(select(31527u, 109721u, true)), 24u)])), firstLeadingBit(abs(firstLeadingBit(var_3.b.a) << (select(vec3<u32>(var_3.c.x, var_1.b.x, var_1.b.x), var_3.c.zwy, true) % vec3<u32>(32u)))));
}

fn func_2() -> i32 {
    global1 = array<u32, 24>();
    let var_0 = _wgslsmith_sub_i32(countOneBits(-24706i), _wgslsmith_add_i32(1172i, u_input.d.x) << (~73247u % 32u));
    let var_1 = Struct_3(~_wgslsmith_mod_vec4_i32(max(firstTrailingBit(vec4<i32>(10638i, 0i, 0i, u_input.e)), vec4<i32>(global2.x, var_0, u_input.a.x, global2.x) | vec4<i32>(u_input.a.x, 1i, var_0, 19385i)), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, u_input.c, global2.x, var_0), -vec4<i32>(-2147483647i, -2147483647i, 2065i, u_input.c))), Struct_1(~_wgslsmith_mult_vec3_u32(func_3(-1000f), vec3<u32>(u_input.b, u_input.b, 1u) & vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)])), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), select(~(~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 11362u, 1u, 36413u))), ~(vec4<u32>(21068u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 0u, 22928u) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], 30643u, global1[_wgslsmith_index_u32(4294967295u, 24u)], 12976u) % vec4<u32>(32u))) | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(33464u, 1u, false), 24u)], 24u)], ~56575u, global1[_wgslsmith_index_u32(1u, 24u)], countOneBits(u_input.b)), vec4<bool>(any(vec3<bool>(true, true, true)), true, true || select(true, false, true), true)), _wgslsmith_sub_vec4_i32(-select(~vec4<i32>(u_input.d.x, -17918i, var_0, -1i), firstLeadingBit(vec4<i32>(global2.x, var_0, 0i, var_0)), all(vec2<bool>(true, true))), -(~select(vec4<i32>(var_0, var_0, -1426i, var_0), vec4<i32>(var_0, u_input.e, var_0, u_input.c), true))));
    global0 = 4117i;
    global2 = firstTrailingBit(max(select(u_input.a.zx, vec2<i32>(22878i, u_input.c), vec2<bool>(var_1.b.b.x, false)), u_input.a.zx) & firstTrailingBit(vec2<i32>(-2147483647i, 6977i))) & -(-vec2<i32>(var_0, 23768i) << ((var_1.c.wy ^ select(vec2<u32>(0u, 87709u), var_1.c.zy, var_1.b.b.x)) % vec2<u32>(32u)));
    return var_0;
}

fn func_1(arg_0: bool) -> Struct_3 {
    return Struct_3((_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 1i, 0i, u_input.e), ~vec4<i32>(u_input.c, 3130i, u_input.a.x, 1i)) | _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, 2147483647i, 2147483647i, global2.x), vec4<i32>(2147483647i, u_input.d.x, u_input.a.x, 0i))) ^ abs(vec4<i32>(i32(-1i) * -58356i, func_2(), select(35152i, u_input.d.x, arg_0), u_input.e)), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~30440u, 24u)] >> ((global1[_wgslsmith_index_u32(u_input.b, 24u)] ^ 1u) % 32u), 24u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 36652u)), u_input.b << (44792u % 32u)), vec2<bool>(true, true)), ~vec4<u32>(5373u, ~(0u ^ u_input.b), 0u << (~u_input.b % 32u), u_input.b), max(~reverseBits(vec4<i32>(2147483647i, global2.x, -1i, 2147483647i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(40346i, -1i, global2.x, -2147483647i), vec4<i32>(u_input.e, u_input.a.x, 2147483647i, -2147483647i)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.d.x, u_input.d.x)), true)) ^ abs(~min(vec4<i32>(0i, 2147483647i, 1i, global2.x), vec4<i32>(2147483647i, 2147483647i, u_input.e, global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1(!(!(!(var_0 && var_0))));
    global1 = array<u32, 24>();
    var var_2 = !(!vec3<bool>(true, !var_0, var_0));
    global1 = array<u32, 24>();
    var_2 = vec3<bool>(true, true, var_0);
    let var_3 = Struct_2(func_1(var_2.x).b);
    var var_4 = Struct_4(-(~max(-46609i, u_input.a.x)), ~select(countOneBits(vec2<u32>(30826u, u_input.b)), var_1.c.ww, var_3.a.b.x != var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

