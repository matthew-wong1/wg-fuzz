struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: array<bool, 5> = array<bool, 5>(false, true, true, true, true);

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> bool {
    var var_0 = 103f;
    global0 = array<vec3<f32>, 4>();
    let var_1 = Struct_2(1i & abs(global2.a), arg_0, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f - 530f) * _wgslsmith_f_op_f32(-541f + -1010f)), _wgslsmith_f_op_f32(min(1787f, 105f)), _wgslsmith_f_op_f32(-1068f - 480f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -799f)))))), Struct_1(_wgslsmith_clamp_i32(arg_1.x, _wgslsmith_mod_i32(-2147483647i, abs(2147483647i)), ~arg_0.a)), vec4<bool>(true | (global1[_wgslsmith_index_u32(~u_input.c.x, 5u)] || global1[_wgslsmith_index_u32(~arg_2.x, 5u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-243f, -445f)) - _wgslsmith_f_op_f32(f32(-1f) * -806f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f * 1000f) + _wgslsmith_f_op_f32(round(-168f))), all(!(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.d, 5u)]))), true));
    var var_2 = _wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_clamp_vec3_u32(arg_2, reverseBits(select(arg_2, arg_2, var_1.e.x)), arg_2)) ^ _wgslsmith_sub_u32(arg_2.x, ~_wgslsmith_add_u32(1u, countOneBits(4294967295u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -951f) * 635f)));
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec2<u32> {
    global1 = array<bool, 5>();
    var var_0 = 1478f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f + 1f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(-747f + -296f), func_3(Struct_1(_wgslsmith_sub_i32(global2.a, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global2.a, global2.a) | vec3<i32>(u_input.a, u_input.a, global2.a), select(vec3<i32>(-33145i, 2147483647i, -1i), vec3<i32>(global2.a, -2147483647i, u_input.a), vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.x, 5u)]))), select(arg_0, vec3<u32>(55918u, u_input.d, arg_0.x), arg_1.x | arg_1.x)))));
    let var_1 = Struct_1(min(global2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, ~24740i, _wgslsmith_add_i32(-5736i, u_input.a)), ~select(vec3<i32>(-1i, 15263i, -11715i), vec3<i32>(-11710i, -1i, u_input.a), global1[_wgslsmith_index_u32(arg_0.x, 5u)]))));
    global0 = array<vec3<f32>, 4>();
    return ~(~(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(arg_0.x, arg_0.x))) & (vec2<u32>(42953u, arg_0.x) << ((u_input.c & vec2<u32>(u_input.c.x, 39194u)) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_2(~1i, Struct_1(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 672f, 1535f, 2132f) - vec4<f32>(463f, 470f, -211f, -308f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(531f, 917f, 1582f, -780f) + vec4<f32>(-285f, 239f, 953f, 1000f))))), Struct_1(-(arg_2.x & 2147483647i)), !vec4<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), 5u)], all(vec4<bool>(true, true, true, true)), all(!vec2<bool>(true, var_0))));
    global2 = var_1.b;
    global0 = array<vec3<f32>, 4>();
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.x);
    return var_1.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: i32) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(global2.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(-27897i, firstTrailingBit(2147483647i)), arg_3)), -2147483647i, 0i, firstTrailingBit(arg_0.x));
    global0 = array<vec3<f32>, 4>();
    let var_1 = 84308u;
    var_0 = arg_0;
    global2 = func_4(select((~var_0.xy << (~u_input.c % vec2<u32>(32u))) << (func_2(select(vec3<u32>(15500u, 79988u, 0u), vec3<u32>(var_1, 1u, u_input.c.x), global1[_wgslsmith_index_u32(u_input.b, 5u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(var_1, 5u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_1, 5u)], global1[_wgslsmith_index_u32(19090u, 5u)]), global1[_wgslsmith_index_u32(u_input.b, 5u)])) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~(~var_0.xz), abs(min(arg_2.a.zx, var_0.ww))), !vec2<bool>(global2.a != 0i, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], true)))), ~arg_2.a.xy ^ vec2<i32>(countOneBits(_wgslsmith_mod_i32(14478i, arg_0.x)), _wgslsmith_sub_i32(global2.a, 26436i)), arg_0);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    var var_0 = u_input.a;
    var var_1 = Struct_3(vec4<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(func_1(vec4<i32>(1i, 4938i, 38252i, u_input.a), vec2<f32>(1129f, 199f), Struct_4(vec3<i32>(u_input.a, u_input.a, global2.a), u_input.a), u_input.a), ~u_input.d)), func_2(vec3<u32>(u_input.c.x, 8560u, u_input.b) | vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<bool>(true, true, true)).x << (59822u % 32u), ~44652u, firstTrailingBit(u_input.b)), _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.d, 11002u), select(vec4<u32>(u_input.d, 31417u, u_input.b, u_input.c.x), vec4<u32>(u_input.b, 115662u, u_input.b, 1u), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)], true, global1[_wgslsmith_index_u32(u_input.d, 5u)]))), ~min(~vec4<u32>(u_input.d, u_input.b, u_input.c.x, 1u), ~vec4<u32>(0u, 78777u, u_input.d, u_input.d))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, u_input.d, 0u, 26072u)), firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.d))), abs(abs(vec4<u32>(u_input.d, 30319u, 43428u, u_input.c.x))), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 34614u, 48747u)), select(vec4<u32>(u_input.b, 19648u, u_input.c.x, u_input.d), vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.d), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], false, false)), vec4<u32>(5248u, 54521u, u_input.d, u_input.b))) >> (max(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.c.x, u_input.b), vec4<u32>(4294967295u, 17395u, 4294967295u, 50466u), vec4<u32>(0u, 1u, 103005u, u_input.c.x)), max(vec4<u32>(1u, 0u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, u_input.d))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(78476u, 0u, u_input.d, u_input.d), vec4<u32>(1u, u_input.c.x, u_input.b, 51404u)))) % vec4<u32>(32u)), true, vec2<i32>(global2.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, u_input.a, u_input.a, -25206i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, 6299i, 1i), vec4<i32>(u_input.a, 41169i, 0i, 14013i))), 0i)));
    let var_2 = ~vec4<i32>(firstLeadingBit(select(abs(var_1.e.x), u_input.a & u_input.a, global1[_wgslsmith_index_u32(u_input.d, 5u)] | false)), -2147483647i, 0i, -5163i);
    var_1 = Struct_3(select(abs(var_1.b), var_1.b, select(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.a.x, 5u)], false, global1[_wgslsmith_index_u32(var_1.b.x, 5u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 5u)], false, global1[_wgslsmith_index_u32(var_1.b.x, 5u)], var_1.d), select(vec4<bool>(global1[_wgslsmith_index_u32(8099u, 5u)], false, var_1.d, false), vec4<bool>(false, var_1.d, true, true), vec4<bool>(var_1.d, global1[_wgslsmith_index_u32(var_1.b.x, 5u)], var_1.d, global1[_wgslsmith_index_u32(var_1.b.x, 5u)])))) ^ var_1.b, vec4<u32>(u_input.d, ~u_input.d, var_1.b.x, select(4294967295u, u_input.b, global1[_wgslsmith_index_u32(var_1.b.x, 5u)])), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 18135u), var_1.b.x, _wgslsmith_sub_u32(0u, u_input.c.x), max(0u, 53837u)), var_1.b), false, max(select(firstTrailingBit(firstTrailingBit(vec2<i32>(2147483647i, var_1.e.x))), var_2.yx, vec2<bool>(!var_1.d, false)), vec2<i32>(-2147483647i, -2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(22852i, var_1.e.x, 42526i, var_2.x), var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global2.a), func_2(var_1.b.xxy, select(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.a.x, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), select(vec3<bool>(var_1.d, true, true), vec3<bool>(false, var_1.d, global1[_wgslsmith_index_u32(u_input.c.x, 5u)]), global1[_wgslsmith_index_u32(u_input.b, 5u)]), any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 5u)]))), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(28945u, 5u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 5u)], false, true), !global1[_wgslsmith_index_u32(9560u, 5u)]), global1[_wgslsmith_index_u32(~u_input.c.x, 5u)])).x, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~35275u, _wgslsmith_add_u32(0u, var_1.a.x)), u_input.d), 1u, ~func_1(vec4<i32>(global2.a, 19881i, global2.a, -1i), vec2<f32>(2253f, -983f), Struct_4(vec3<i32>(2147483647i, global2.a, -21922i), 2147483647i), 75137i), abs(_wgslsmith_div_u32(4294967295u, 11081u))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(max(u_input.c.x, 1u), 1u), firstTrailingBit(0u), firstLeadingBit(var_1.b.x)), 1u, var_1.a.x));
}

