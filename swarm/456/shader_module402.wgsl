struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true));

var<private> global1: array<vec2<bool>, 4>;

var<private> global2: i32 = 36381i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    global2 = ~u_input.e.x;
    let var_0 = -2397f;
    let var_1 = select(vec4<bool>(!(u_input.c.x >= u_input.e.x) & all(vec3<bool>(false, true, true)), all(global0[_wgslsmith_index_u32(firstLeadingBit(557u), 17u)]), _wgslsmith_f_op_f32(abs(var_0)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0)), -582f, true)), all(global1[_wgslsmith_index_u32(41562u, 4u)])), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(35915u, arg_0.x, 0u), u_input.a)), 17u)], global0[_wgslsmith_index_u32(22760u, 17u)]), vec4<bool>(all(vec2<bool>(true, true)), !all(global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), true, true), select(select(!global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(arg_0.x >> (arg_0.x % 32u), 17u)], select(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(130569u, 17u)], true)), select(select(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)], vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false), 4294967295u > arg_0.x), vec4<bool>(-783f == var_0, true, all(global0[_wgslsmith_index_u32(46336u, 17u)]), true))));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(max(firstLeadingBit(vec3<u32>(9481u, arg_0.x, 0u)), reverseBits(u_input.b)) >> (((u_input.a >> (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u))) << (~u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~(u_input.b >> (vec3<u32>(u_input.a.x, arg_0.x, u_input.b.x) % vec3<u32>(32u)))), ~u_input.b >> (u_input.b % vec3<u32>(32u))), (~(u_input.b << (u_input.a % vec3<u32>(32u))) | u_input.b) ^ ~u_input.a);
    var var_3 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.d.x, -1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.e.x, u_input.d.x, u_input.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(30127i, 1i, 23741i, u_input.e.x), vec4<i32>(-1i, -13860i, -2147483647i, 1i), vec4<i32>(63341i, -27444i, u_input.c.x, u_input.d.x))), select(vec4<i32>(u_input.e.x, -2147483647i, u_input.d.x, -2147483647i), vec4<i32>(37808i, u_input.e.x, u_input.d.x, u_input.c.x), var_1.x) >> ((vec4<u32>(20482u, u_input.b.x, u_input.a.x, var_2.x) << (vec4<u32>(80524u, 0u, 50419u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(~1i, -7686i >> (u_input.a.x % 32u), u_input.e.x, 2356i >> (1u % 32u)))) ^ vec4<i32>(-1i, abs(select(7117i, u_input.c.x, var_1.x) ^ firstLeadingBit(u_input.d.x)), countOneBits(-1i), ~((u_input.c.x << (u_input.b.x % 32u)) >> (~30701u % 32u)));
    return _wgslsmith_mult_vec2_i32(reverseBits(~vec2<i32>(var_3.x, 2147483647i)), var_3.zw & firstLeadingBit(-_wgslsmith_sub_vec2_i32(u_input.d.xy, vec2<i32>(2147483647i, u_input.c.x))));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(49122u, 42132u);
    let var_1 = Struct_4(Struct_1(countOneBits(~var_0.a), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, u_input.a.x), 28314u, ~var_0.b)), vec3<bool>(false, true, true), Struct_2(Struct_1(0u, var_0.a), ~vec4<u32>(var_0.b, 4294967295u, 68212u, 1u) ^ (vec4<u32>(4294967295u, 0u, var_0.a, 11974u) ^ vec4<u32>(1u, u_input.b.x, var_0.a, 0u)), u_input.a.xy & min(~u_input.b.xx, u_input.a.xx | vec2<u32>(var_0.b, u_input.b.x)), vec4<bool>(true, true, false, false)), Struct_3(func_3(firstLeadingBit(u_input.b.yx ^ u_input.b.yx))));
    let var_2 = ~(min(83745u, ~_wgslsmith_div_u32(4294967295u, u_input.b.x)) ^ abs(~max(var_1.a.a, 4294967295u)));
    global1 = array<vec2<bool>, 4>();
    let var_3 = ~(-(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, var_1.d.a.x, arg_0.a.x, u_input.d.x), vec4<i32>(-2147483647i, 7185i, arg_0.a.x, 12484i)) >> (vec4<u32>(4294967295u, var_2, 73285u, 1u) % vec4<u32>(32u)))) & vec4<i32>(var_1.d.a.x, var_1.d.a.x, max(arg_0.a.x, -1i), 1i ^ -(~u_input.d.x));
    return var_1.c.a;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = ~1i;
    var var_0 = Struct_2(func_2(Struct_3(vec2<i32>(u_input.c.x, 48479i))), vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(max(0u, u_input.a.x)), ~select(u_input.a.x, u_input.b.x, arg_0)), 34293u, ~u_input.a.x, reverseBits(~5245u)), _wgslsmith_add_vec2_u32(u_input.a.xz, ~_wgslsmith_div_vec2_u32(countOneBits(u_input.b.yy), ~vec2<u32>(32654u, 1u))), !global0[_wgslsmith_index_u32(~firstTrailingBit(0u | u_input.a.x), 17u)]);
    var_0 = Struct_2(func_2(Struct_3(vec2<i32>(~(-4041i), countOneBits(-1792i)))), abs(firstTrailingBit(var_0.b) | min(var_0.b, var_0.b)) & _wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(74236u, ~82077u, 32386u, ~u_input.a.x)), vec2<u32>(u_input.a.x, 1u), select(var_0.d, vec4<bool>(all(vec3<bool>(true, arg_0, false)), any(vec4<bool>(arg_0, false, true, true)), select(true, var_0.d.x && true, var_0.d.x), select(arg_0, var_0.d.x & var_0.d.x, true)), var_0.d.x));
    return Struct_2(Struct_1(var_0.b.x & ~_wgslsmith_clamp_u32(var_0.a.b, var_0.b.x, var_0.a.b), 0u), ~(var_0.b | var_0.b), select(u_input.a.xx, ~(~vec2<u32>(u_input.a.x, 0u)), vec2<bool>(false, (u_input.c.x > -2147483647i) | (u_input.c.x >= -2147483647i))), !vec4<bool>(false, all(!global1[_wgslsmith_index_u32(649u, 4u)]), !arg_0, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!(!select(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], vec4<bool>(false, false, false, false)))));
    global0 = array<vec4<bool>, 17>();
    var var_1 = -(~vec4<i32>(select(-u_input.c.x, 1i, var_0), 2147483647i, select(4873i, max(14963i, -1i), var_0 || true), firstLeadingBit(u_input.c.x ^ 16229i)));
    var var_2 = func_1(all(global0[_wgslsmith_index_u32(0u, 17u)]));
    var var_3 = abs(i32(-1i) * -16594i);
    var_1 = _wgslsmith_clamp_vec4_i32(-(~((vec4<i32>(var_1.x, var_1.x, var_1.x, -19259i) | vec4<i32>(u_input.e.x, 1i, -5940i, var_1.x)) | abs(vec4<i32>(2147483647i, u_input.e.x, -38297i, 0i)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_1.wxw, ~vec3<i32>(u_input.c.x, 0i, u_input.c.x)), 17790i), 1i, u_input.c.x, 11832i), firstLeadingBit(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -32688i, u_input.e.x, 1i), vec4<i32>(-18008i, 2147483647i, 0i, var_1.x)), var_1.x, _wgslsmith_dot_vec2_i32(select(u_input.d.xx, u_input.e, vec2<bool>(var_0, var_2.d.x)), u_input.d.yz), _wgslsmith_add_i32(var_1.x, ~u_input.d.x))));
    let var_4 = Struct_2(func_2(Struct_3(var_1.zz)), vec4<u32>(1u, (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), var_2.b.zz) << (_wgslsmith_add_u32(var_2.a.b, 25430u) % 32u)) >> (_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x) % 32u), ~max(var_2.a.a, 73855u), func_1(var_2.c.x <= var_2.c.x).b.x), vec2<u32>(0u, ~u_input.b.x), select(global0[_wgslsmith_index_u32(max(var_2.b.x, 64628u), 17u)], vec4<bool>((false | var_2.d.x) && true, true, true | select(var_0, var_0, true), reverseBits(var_1.x) > max(u_input.e.x, var_1.x)), !select(global0[_wgslsmith_index_u32(1u, 17u)], vec4<bool>(var_2.d.x, var_0, false, var_0), vec4<bool>(true, var_2.d.x, var_0, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, countOneBits(~_wgslsmith_mult_vec2_u32(u_input.b.yx, _wgslsmith_clamp_vec2_u32(var_4.c, vec2<u32>(u_input.a.x, 1u), var_2.c))), 101322u);
}

